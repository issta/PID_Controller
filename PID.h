typedef struct PID_t{
    uint8_t sp; /// Set point to the controllable variable
    uint8_t Ke;
    uint8_t Ki;
    uint8_t Kp;
    uint8_t Output;
    uint8_t u;
}PID_t;

/**
*/
PID_set_y( PID_t * PID, uint8_t y );
/**
*/
PID_get_y( PID_t * PID, uint8_t y );
/**
*/
PID_set_sp( PID_t * PID, uint8_t sp );
/**
*/
PID_get_sp( PID_t * PID, uint8_t sp );
/**
*/
PID_set_u( PID_t * PID, uint8_t u );
/**
*/
PID_get_u( PID_t * PID, uint8_t u );
/**
*/
PID_compute( PID_t * PID );