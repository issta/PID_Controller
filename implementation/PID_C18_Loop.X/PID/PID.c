/**
* \file PID.c
* \author 
* Developer(s): John E. Cordoba
* Language: ANSI C
* \brief
* Abstract: Entity for the PID Controller, it's a ideal implementation, non
* interactive release from a simple equation:
* u(s) = Kp ( 1  +  1   +  Td s )
                   Ti s  
* For a simple pattern the equations is write  
* u(s) = P + I/s + D s
* References: 
*/

/*******************************************************************************
* HEADER FILES
*******************************************************************************/
#include "PID.h"
#include "stdio.h"
/*******************************************************************************
* GLOBAL CONSTANT DECLARATION
*******************************************************************************/

/*******************************************************************************
* GLOBAL MACRO DECLARATION
*******************************************************************************/

/*******************************************************************************
* GLOBAL NEW DATA TYPES
*******************************************************************************/

/*******************************************************************************
* GLOBAL DATA DECLARATION
*******************************************************************************/

/*******************************************************************************
* GLOBAL FUNCTION DECLARATION
*******************************************************************************/

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_set_y( PID_t * PID, double y )
{
    PID->y = y;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_y( PID_t * PID, double *y )
{
    *y = PID->y;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_set_sp( PID_t * PID, double sp )
{
    PID->sp = sp;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_sp( PID_t * PID, double * sp )
{
    *sp = PID->sp;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_set_u( PID_t * PID, double u )
{
    PID->u = u;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_u( PID_t * PID, double * u )
{
    *u = PID->u;
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_init( PID_t * PID, double P, double I, double D )
{
    // save the parameters of PID
    PID->P = P;
    PID->I = I;
    PID->D = D;
    // compute the coefficient
    PID->k1 = PID->P + PID->I + PID->D;
    PID->k2 = -1.0*(PID->P + 2.0*PID->D);
    PID->k3 = PID->D;

    printf("k1: %6.3f -- k2: %6.3f -- k3: %6.3f\r\n", PID->k1, PID->k2, PID->k3 );
    return 0;
}

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_compute( PID_t * PID )
{
    static double ek, ek1, ek2, uk1;
    
    // e(k) = sp(k) y(y)
    ek = PID->sp - PID->y;
    
    // Compute the controlled effort
    PID->u = (PID->k1)*ek + (PID->k2)*ek1 + (PID->k3)*ek2 + uk1;
    
    // Update the samples
    ek2 = ek1;
    ek1 = ek;
    uk1 = PID->u;

    //printf("ek1: %6.3f \r\n", ek1 );
    return 0;
}

/*******************************************************************************
* END OF FILE
*******************************************************************************/