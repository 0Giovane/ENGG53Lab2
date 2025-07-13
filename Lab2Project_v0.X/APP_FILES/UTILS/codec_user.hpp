/* 
 * File:   codec_user.hpp
 * Author: Bianca
 *
 * Created on 12 de Julho de 2025, 20:39
 */

#ifndef CODEC_USER_HPP
#define	CODEC_USER_HPP

#include <stdint.h>
#include <string.h>
#include "commons.hpp"

packedUser_t packUser(const user_t& user);
user_t unpackUser(const packedUser_t& packed);

#endif	/* CODEC_USER_HPP */

