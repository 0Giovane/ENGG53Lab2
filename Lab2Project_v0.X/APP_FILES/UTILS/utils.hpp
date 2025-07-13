/* 
 * File:   utils.hpp
 * Author: Bianca
 *
 * Created on July 10, 2025, 11:18 PM
 */

#ifndef UTILS_HPP
#define	UTILS_HPP

#include <stdint.h>
#include "COMMONS/commons.hpp"

void delayUs(uint16_t us);
void delayMs(uint16_t ms);
packedUser_t packUser(const user_t& user);
user_t unpackUser(const packedUser_t& packed);

#endif	/* UTILS_HPP */

