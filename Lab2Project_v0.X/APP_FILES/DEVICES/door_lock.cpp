#include <xc.h>
#include "definitions.h"
#include "door_lock.hpp"

DoorLock::DoorLock(GPIO_PIN pin):m_pin(pin){}
   
void DoorLock::init()
{
    LED_TEST_Clear();
}

bool DoorLock::open()
{
    LED_TEST_Set();
    if(!GPIO_PinRead(m_pin))
    {
        return false;
    }
    return true;
}

bool DoorLock::close()
{
    LED_TEST_Clear();
    if(GPIO_PinRead(m_pin))
    {
        return false;
    }
    return true;
}