/* 
 * File:   door_lock.hpp
 * Author: Bianca
 *
 * Created on 12 de Julho de 2025, 21:32
 */

#ifndef DOOR_LOCK_HPP
#define	DOOR_LOCK_HPP


class DoorLock
{
public:
    DoorLock(GPIO_PIN m_pin);
    
    void init();
    void update();
    
    bool open();
    bool close();
    
private:
    GPIO_PIN m_pin;
};

#endif	/* DOOR_LOCK_HPP */

