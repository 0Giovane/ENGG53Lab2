/* 
 * File:   door_lock.hpp
 * Author: Bianca
 *
 * Created on 12 de Julho de 2025, 21:32
 */

#ifndef DOOR_LOCK_HPP
#define DOOR_LOCK_HPP

#include <stdint.h>
#include <stdbool.h>

#define MAX_OPEN_TIMER_MS 5000 

typedef enum 
{
    DOOR_LOCK_IDLE,
    DOOR_LOCK_OPENED_WAIT,
    DOOR_LOCK_CLOSING
} doorLockState_;

class DoorLock
{
public:
    DoorLock(GPIO_PIN gpio_pin);
    
    void init();
    void update();

    void open(uint16_t duration_ms = MAX_OPEN_TIMER_MS);
    void close();
    
    bool isOpen() const;
    bool isClosed() const;
    
    uint16_t getDelayCounter();

private:
    GPIO_PIN m_gpio_pin;
    
    doorLockState_ m_state;
    uint16_t m_delay_counter;
    uint16_t m_open_duration;
    bool m_request_open;
};

#endif /* DOOR_LOCK_HPP */
