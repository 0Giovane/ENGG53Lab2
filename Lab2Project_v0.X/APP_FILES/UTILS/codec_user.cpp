#include "utils.hpp"

packedUser_t packUser(const user_t& user)
{
    packedUser_t packed = {0};

    for (int i = 0; i < 2; ++i)
    {
        packed.login[i] = ((user.login[i*2] - '0') << 4) | (user.login[i*2+1] - '0');
    }
    for (int i = 0; i < 2; ++i)
    {
        packed.password[i] = ((user.password[i*2] - '0') << 4) | (user.password[i*2+1] - '0');
    }
    
    packed.flags = 0;
    packed.flags |= (user.is_admin   & 0x01) << 0;
    packed.flags |= (user.is_blocked & 0x01) << 1;
    packed.flags |= (user.last_access & 0x03) << 2;

    return packed;
}

user_t unpackUser(const packedUser_t& packed)
{
    user_t user = {};

    for (int i = 0; i < 2; ++i)
    {
        user.login[i*2]   = ((packed.login[i] >> 4) & 0x0F) + '0';
        user.login[i*2+1] = (packed.login[i] & 0x0F) + '0';
    }

    for (int i = 0; i < 2; ++i)
    {
        user.password[i*2]   = ((packed.password[i] >> 4) & 0x0F) + '0';
        user.password[i*2+1] = (packed.password[i] & 0x0F) + '0';
    }

    user.login[4] = '\0';
    user.password[4] = '\0';

    uint8_t flags = packed.flags;
    user.is_admin    = (flags >> 0) & 0x01;
    user.is_blocked  = (flags >> 1) & 0x01;   
    user.last_access = static_cast<roomNumber_t>((flags >> 2) & 0x03);

    return user;
}
