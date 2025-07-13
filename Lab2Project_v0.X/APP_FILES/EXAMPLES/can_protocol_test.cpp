#include "examples.hpp"

void canProtocolTest()
{    
    CanProtocol can_protocol; 
    can_protocol.init();
    
    uint32_t id_msg = 0;
    can_protocol.buildMessageId(BOARD_ID, ADD, id_msg);  //max 11 bits to can id

    uint8_t MAX_MSG = 3;
            
    uint32_t id = id_msg;
    uint8_t size = 8;
    uint8_t tx_data[MAX_MSG][8] = {
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0},
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF1},
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF2}};
    
    uint32_t rx_id = 0;
    uint8_t rx_size = 0;
    uint8_t rx_data[8] = {0};
    uint16_t timestamp = 0;
        
    can_protocol.setTxFlag();
    can_protocol.setRxFlag();
    
    uint8_t i = 0;
         
    while ( true )
    {  
        SYS_Tasks ( );
        
        LED_L1_Clear();
        LED_L2_Clear();
        LED_L3_Clear();
        LED_L4_Clear();
        LED_TEST_Clear();
        
        CORETIMER_DelayMs(1000);
        
        if (can_protocol.isTxDone())
        {
            if (can_protocol.write(id, size, tx_data[i]))
            {
                LED_L1_Set();
                can_protocol.resetTxFlag();
            }
            else
            {
                LED_L2_Set();
            }
        }
        
        CORETIMER_DelayMs(100);
        
        if (can_protocol.isRxDone())
        {            
            if (can_protocol.read(&rx_id, &rx_size, rx_data, &timestamp))
            {
                LED_L3_Set();
                can_protocol.resetRxFlag();

                if ((rx_id == id) && (rx_size == size) && (memcmp(rx_data, tx_data[i], size) == 0))
                {
                    LED_TEST_Set();
                }
                else
                {
                    LED_L4_Set();
                }
                
                i++;     
                if(i > MAX_MSG-1)
                {
                    return;
                }
                else
                {
                    can_protocol.setRxFlag();
                }
            }
        }
        
        CORETIMER_DelayMs(100);
    }
}
