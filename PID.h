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
    uint8_t sp;     /**< Set point to the controllable variable */
    uint8_t Ke;     /**<  */
    uint8_t Ki;     /**<  */
    uint8_t Kp;     /**<  */
    uint8_t Output; /**<  */
    uint8_t u;      /**<  */
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
uint8_t PID_compute( PID_t * PID );
#endif
/*******************************************************************************
* END OF FILE
*******************************************************************************/