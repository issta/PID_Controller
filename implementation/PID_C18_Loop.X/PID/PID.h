/**
* \file PID.h
* \author 
* Developer(s): John E. Cordoba
* Language: ANSI C
* \brief
* Abstract: Entity for the PID Controller 
* References: 
*/
#ifndef __PID_
#define __PID_
/*******************************************************************************
* HEADER FILES
*******************************************************************************/

/*******************************************************************************
* GLOBAL CONSTANT DECLARATION
*******************************************************************************/

/*******************************************************************************
* GLOBAL MACRO DECLARATION
*******************************************************************************/

/*******************************************************************************
* GLOBAL NEW DATA TYPES
*******************************************************************************/

/**
* \struct AxisWakeUp_e definition
*/
typedef struct {
    /*@{*/
    double sp; /**< Set point to the controlled variable */
    double y;  /**< Controllable variable */
    double u;  /**< Control effort */
    double P;  /**< Gain Proportional */
    double I;  /**< Gain Integral */
    double D;  /**< Gain Derivative */
    double k1; /**< Coefficient to the compute PID */
    double k2; /**< Coefficient to the compute PID */
    double k3; /**< Coefficient to the compute PID */
    /*@}*/
}PID_t;

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
uint8_t PID_set_y( PID_t * PID, uint8_t y );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_y( PID_t * PID, uint8_t y );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_set_sp( PID_t * PID, uint8_t sp );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_sp( PID_t * PID, uint8_t sp );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_set_u( PID_t * PID, uint8_t u );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_get_u( PID_t * PID, uint8_t u );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_init( PID_t * PID );

/**
 * \brief 
 * 
 * \param PID_t PID type object
 * \return 
 */
uint8_t PID_compute( PID_t * PID );
#endif
/*******************************************************************************
* END OF FILE
*******************************************************************************/