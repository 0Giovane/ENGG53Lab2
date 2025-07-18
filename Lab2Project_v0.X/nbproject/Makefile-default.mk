#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=APP_FILES/DEVICES/can_protocol.cpp APP_FILES/DEVICES/debug_uart.cpp APP_FILES/DEVICES/eeprom_24cxx.cpp APP_FILES/DEVICES/keypad.cpp APP_FILES/DEVICES/lcd_12864.cpp APP_FILES/DEVICES/door_lock.cpp APP_FILES/DRIVERS/lcd_drv_st7920.cpp APP_FILES/EXAMPLES/codec_user_test.cpp APP_FILES/EXAMPLES/keypad_test.cpp APP_FILES/EXAMPLES/debug_uart_test.cpp APP_FILES/EXAMPLES/eeprom_test.cpp APP_FILES/EXAMPLES/can_eeprom_test.cpp APP_FILES/EXAMPLES/door_lock_test.cpp APP_FILES/LIBRARIES/user_manager.cpp APP_FILES/UTILS/codec_user.cpp APP_FILES/UTILS/delay.cpp APP_FILES/application.cpp ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/main.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o ${OBJECTDIR}/APP_FILES/UTILS/delay.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d ${OBJECTDIR}/APP_FILES/application.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o ${OBJECTDIR}/APP_FILES/UTILS/delay.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=APP_FILES/DEVICES/can_protocol.cpp APP_FILES/DEVICES/debug_uart.cpp APP_FILES/DEVICES/eeprom_24cxx.cpp APP_FILES/DEVICES/keypad.cpp APP_FILES/DEVICES/lcd_12864.cpp APP_FILES/DEVICES/door_lock.cpp APP_FILES/DRIVERS/lcd_drv_st7920.cpp APP_FILES/EXAMPLES/codec_user_test.cpp APP_FILES/EXAMPLES/keypad_test.cpp APP_FILES/EXAMPLES/debug_uart_test.cpp APP_FILES/EXAMPLES/eeprom_test.cpp APP_FILES/EXAMPLES/can_eeprom_test.cpp APP_FILES/EXAMPLES/door_lock_test.cpp APP_FILES/LIBRARIES/user_manager.cpp APP_FILES/UTILS/codec_user.cpp APP_FILES/UTILS/delay.cpp APP_FILES/application.cpp ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/main.cpp



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/a8e2dccbbe93fbfeed4874e7b794f5e3b6900a5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/a31e57c3745e3d55b07e53781381a8034ce7f949 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/10eec16e324e021c683032f540983903c910f057 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/6b532fb381b8b55be6812197490034845e8f98d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/fa5d569273f51d56368f5ccb88fab6b9cbda0771 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/4fca241202d87b181aa719a7596165c3af119a42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/8fa96a5b9bc423e45295e76311b4dc5a4e68c8c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/1be0b21b9641423b3e87f013a0383cc8414ded69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/c52f61444b9a922611d029a96d6f15f88f81b848 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/fee53ac4d7e4d409523e1da57d02d5c9b1e6feed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/3c60bf11340389c76537764f73686b8c5d737086 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/5c932bcf72c2ee092122c6f3054d56a91bc4997c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/589db93af63c96c6105448f657198ccd2460708f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/9f309c28e0dba23746734d3b9ef70a88bab5adc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/a1ef1cd3be311c8680d2f39c84e21cc142bb3e8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/35848a60fe6b8250a1071bcbfbcbe9c54e044976 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/608fec2321fa15b6e975870671f458ff32e579e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/26184c3988285c18f62c63f8bf839b8c2b5390a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/3dff60df1df2aae5612d027774cf08d6d2fcf9e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/a6b3bd4260d51d84721c92d8fa4372580d9d97e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/d875e72aab163a6fd59534c7c1dc89da7ad8555b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/5c1db0444ec16fc4b0a671580ee2daf5cfe150f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/90f8d32c5bf01e3b3dda36a54080a407a6cf58e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/20dc706e960af107a6e33a7e3129b43f01a1975 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/24d96e733214e458118e990b50f9df929db46491 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/7b20db0b8249d68e52bd285d95b076b28550acdb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/974bcd6452b259da6b28ae43840b27b40272c7b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/9b4211f38fc2569dffc8a0258608e48cb59b95f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/97bbe1f55f01c5ca46ec24df81be5f23ba0b9947 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/cf8a9feab9368bae02a73512089cce06e466620b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/9de3ef0aa4b708f00838b73d83d763c62a5befef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/10b53bc3a4853beaa234e7abe180b7e99a2c98b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/e9576ef37ec23a19072dae4396375d238c1c12b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/dfcc7bc5c7d2c374c727c621562e316188260046 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/cd386feae178c6e4351faa1c3d0a209500f66484 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/2c4a9f71aa05981a1d9d17f6656766be6a3af3c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/1f8e37265ef740f2aaf25dbd8eaa9f05b7fd9990 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/aa7bc46b82efeaad24e8ce463ce2ff3d3233ce6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/91eeb59de42319c589d79fc004b498f2e6b4c6ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/6519e7da707f3fc07fb2e2d7ba37df8d96c2bb51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/fbf007117c164a863c5e014768f9bd659a6a0ee7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/5c190339dddece38d1c094d4ad044f3bd93e9f68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/4f0754184215d8148462af3c910aac87ecacba3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/64818fb00a57bbb53d000e0d8445e00eea4362ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/6b5b388c92effe1cf6d1112f5883b535fb8de4b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/88ced59fb3bbe5d0ed0984c726ec4136c670d50b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/c847665fb7316823a0b7a46119ce224cab8f33aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/3d365d0562b39ec3980ff43fb1fe9f962137dff8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/5f8b20b4dadcb65f99e7dc131447c000d258709 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/715784dbc03951fd3e4b2979bc117d77b800d6eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/91cc63ee7b29ad021094df832aac4ba54e5ed13d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/c33ea824e0e57a0fca997a28b5b60e2d8547e726 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/5e90295b5eb35f64f5bfb8c3ac5529d46c31cbef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/95cfd82973dc72d552445c220b9264923c91337 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/66cf76ec606db1078a89bf5b77f446ffa6ddfea2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/152d1eb89fa663d5f9a7d8976a174635a37b0cfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/95e5b828da9a586feb80f67e1c9bbf42ff68c451 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/9d21d899439492f3087ed2e66caeaebb180e5387 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/9901a6a27291f83fbe8643a540370a0bd0c4a210 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/e49995ee09680dfc14891c882e24f5c6f67d09ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/d5e8d80d41d3dd5572d78afec0f4ec19f6f2ac54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/37aaf53e6c63807fb126d4f22d09e00509be1c30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
