/* 
 * File:   main.c
 * Author: jEdwin
 *
 * Created on 22 de octubre de 2014, 04:31 PM
 */

/* Scheduler include files. */
#include "FreeRTOS.h"
#include "task.h"

/* The aplication include files */
#include <stdio.h>
#include <adc.h>
#include <usart.h>
#include <timers.h>
#include <pwm.h>
#include "PID.h"

/* The period between executions of the check task before and after an error
has been discovered.  If an error has been discovered the check task runs
more frequently - increasing the LED flash rate. */
#define mainNO_ERROR_CHECK_PERIOD		( ( TickType_t ) 1000 / portTICK_PERIOD_MS )
#define mainERROR_CHECK_PERIOD			( ( TickType_t ) 100 / portTICK_PERIOD_MS )

/* Priority definitions for some of the tasks.  Other tasks just use the idle
priority. */
#define mainQUEUE_POLL_PRIORITY			( tskIDLE_PRIORITY + 2 )
#define mainCHECK_TASK_PRIORITY			( tskIDLE_PRIORITY + 3 )
#define PRIORITY_ALLTASKS                       ( tskIDLE_PRIORITY + 1 )

/* The LED that is flashed by the check task. */
#define mainCHECK_TASK_LED			( 0 )

/* The period between executions of the check task. */
#define mainCHECK_PERIOD			( ( TickType_t ) 3000 / portTICK_PERIOD_MS  )

/* Constants required for the communications.  Only one character is ever
transmitted. */
#define mainCOMMS_QUEUE_LENGTH			( 5 )
#define mainNO_BLOCK                            ( ( TickType_t ) 0 )
#define mainBAUD_RATE				( ( unsigned long ) 9600 )


/*
 * The Global variables
 */
PID_t PID;
double P = 6.5265;
double I = 0.8421;
double D = 12.645;

/*
 * The task function for the "Period" task.
 */
static void vPeriodTask( void *pvParameters );

void vSystemInitialise( void );


/*
 * 
 */
void main(void)
{
    /* Setup the periphericals */
    vSystemInitialise();

    /* Initialise the required hardware. */
    vPortInitialiseBlocks();
    
    /* Create the tasks defined within this file. */
    xTaskCreate( vPeriodTask, "Per", configMINIMAL_STACK_SIZE, NULL, mainCHECK_TASK_PRIORITY, NULL );

    /* Start the shuedule */
    vTaskStartScheduler();
}
/*-----------------------------------------------------------*/

void vSystemInitialise( void )
{
    /* COnfigure the Ports */
    TRISD = 0x00;
    /* Configure the ADC */
    OpenADC( ADC_FOSC_2 & ADC_RIGHT_JUST & ADC_1ANA_0REF, ADC_CH0 & ADC_INT_OFF );
    /* Configure the USART */
    OpenUSART(  USART_TX_INT_OFF &
                USART_RX_INT_OFF &
                USART_ASYNCH_MODE &
                USART_EIGHT_BIT &
                USART_BRGH_HIGH, 129
             );
    /* Test the tx */
    //WriteUSART('a');
    
    /* Configure the Timer2 to the PWM */
    OpenTimer2(TIMER_INT_OFF & T2_PS_1_16 & T2_POST_1_16);
    /* Configure the PWM1, parameter is period */
    OpenPWM1(250);
    /* Set the Duty Cycle of PWM1, the parameter is a 10 bit variable */
    SetDCPWM1(512);

    /* Initialize the PID */
    PID_init( &PID, P, I, D );
    // Set the SetPoin in 30 graus celcius
    PID_set_sp( &PID, 50.0 );
}

static void vPeriodTask( void *pvParameters )
{
    static volatile unsigned char ucValue = 0;
    static volatile uint16_t convertedValue = 0;
    static volatile uint16_t dutyValue = 0;
    static volatile double u = 0;
    
    /* The parameters are not used. */
    ( void ) pvParameters;

    /* Cycle for ever, delaying then checking all the other tasks are still
    operating without error. */
    for( ;; )
    {
        vTaskDelay( mainCHECK_PERIOD );

         // Read the ADC Value from CHN0
        ConvertADC();
        while( BusyADC() ); // Wait for completion
        convertedValue = ReadADC(); // Read result

        /* Only for test*/
        //printf("cv: %d\r\n", convertedValue );

        /* Update the y value */
        PID.y = (double)(convertedValue*500.0/1024);

        /* Compute the PID */
        PID_compute( &PID );
        /* Get the esfuerzo de control */
        PID_get_u( &PID,  &u );
        u = u/100;

        // saturador, the u will be 0 < u < 100
        if( u > 100.0 )
        {
            u = 100.0;
        }

        if( u < 1.0 )
        {
            u = 1.0;
        }

        // Compute the duty cycle to 10 bits register
        dutyValue = u*1023/100;
        // Set the PWM with the value
        SetDCPWM1(dutyValue);

        /* Toogle the LED */
        ucValue = LATDbits.LATD0;
        LATDbits.LATD0 = !ucValue;
    }
}
/*-----------------------------------------------------------*/

