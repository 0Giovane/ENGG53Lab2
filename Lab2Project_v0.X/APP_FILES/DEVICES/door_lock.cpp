#include <xc.h>
#include "definitions.h"
#include "door_lock.hpp"

DoorLock::DoorLock(GPIO_PIN gpio_pin):
    m_gpio_pin(gpio_pin),
    m_state(DOOR_LOCK_IDLE),
    m_delay_counter(0),
    m_open_duration(MAX_OPEN_TIMER_MS),
    m_request_open(false)
{}

void DoorLock::init()
{
    GPIO_PinClear(m_gpio_pin);
    m_state = DOOR_LOCK_IDLE;
    m_request_open = false;
    m_delay_counter = 0;
}

void DoorLock::open(uint16_t duration_ms)
{
    if (m_state == DOOR_LOCK_IDLE)
    {
        m_request_open = true;
        m_open_duration = duration_ms;
    }
}

void DoorLock::close()
{
    GPIO_PinClear(m_gpio_pin);
    m_state = DOOR_LOCK_CLOSING;
    m_request_open = false;
}

bool DoorLock::isOpen() const
{
    return GPIO_PinRead(m_gpio_pin);
}

bool DoorLock::isClosed() const
{
    return !GPIO_PinRead(m_gpio_pin);
}

uint16_t DoorLock::getDelayCounter()
{
    return m_delay_counter;
}

void DoorLock::update()
{
    switch (m_state)
    {
        case DOOR_LOCK_IDLE:
        {
            if (m_request_open)
            {
                m_request_open = false;
                GPIO_PinSet(m_gpio_pin);
                m_delay_counter = 0;
                m_state = DOOR_LOCK_OPENED_WAIT;
                LED_TEST_Set();
            }
            break;
        }
        case DOOR_LOCK_OPENED_WAIT:
        {
            m_delay_counter++;
            if (m_delay_counter >= m_open_duration)
            {
                GPIO_PinClear(m_gpio_pin);
                m_state = DOOR_LOCK_CLOSING;
                LED_TEST_Clear();
            }
            break;
        }
        case DOOR_LOCK_CLOSING:
        {
            if (!GPIO_PinRead(m_gpio_pin))
            {
                m_state = DOOR_LOCK_IDLE;
            }
            break;
        }
        default: m_state = DOOR_LOCK_IDLE; break;
    }
}
