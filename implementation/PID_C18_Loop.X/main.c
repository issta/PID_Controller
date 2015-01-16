/* 
 * File:   main.c
 * Author: jEdwin
 *
 * Created on 21 de octubre de 2014, 09:20 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include <adc.h>
#include <timers.h>
#include <pwm.h>
#include <usart.h>
#include <delays.h>

#include "PID/PID.h"

PID_t PID;

double P = 6.5265;
double I = 0.8421;
double D = 12.645;

uint16_t convertedValue;
double u;
uint16_t dutyValue;

int entero, decimal;
/*
 * 
 */
void main(void) {

    /* Configure the ADC */
    OpenADC( ADC_FOSC_64 & ADC_RIGHT_JUST & ADC_1ANA_0REF, ADC_CH0 & ADC_INT_OFF );

    OpenTimer2(TIMER_INT_OFF & T2_PS_1_16 & T2_POST_1_16);
    /* Configure the PWM1, parameter is period */
    OpenPWM1(250);
    /* Set the Duty Cycle of PWM1, the parameter is a 10 bit variable */
    SetDCPWM1(512);

    /* Configure the USART */
    OpenUSART(  USART_TX_INT_OFF &
                USART_RX_INT_OFF &
                USART_ASYNCH_MODE &
                USART_EIGHT_BIT &
                USART_BRGH_HIGH, 129
             );
    /* Test the tx */
    //WriteUSART('a');

     // Initialize the PID
    PID_init( &PID, P, I, D );
    // Set the SetPoin in 30 graus celcius
    PID_set_sp( &PID, 50.0 );

    while(1)
    {
        // Read the ADC Value from CHN0
        ConvertADC();
        while( BusyADC() ); // Wait for completion
        convertedValue = ReadADC(); // Read result

        // Update the y value
        PID.y = (double)(convertedValue*500.0/1024);

        // Compute the PID
        PID_compute( &PID );
        // Get the esfuerzo de control
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

        //entero = PID.y;
        //decimal=(PID.y-entero)*10000;
        //printf("Temp: %d.%d -- u :%d --dc : %u\r\n", entero, decimal, u, dutyValue );

        Delay10KTCYx(10);
    }
}

