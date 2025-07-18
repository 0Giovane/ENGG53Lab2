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
MKDIR=mkdir -p
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
MP_LINKER_FILE_OPTION=,--script="../src/config/default/p32MX795F512L.ld"
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
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/d852c8938efdc025af397243d05fe84ba2e5d2a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/f9c520a2814f744b714173c8757044f0a08ea187 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/a6a530f21e4c83561757f6587e0238c8ed3b7778 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/47a40581a11655f54400836af1af9964ec9f8d39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/a245552a9e498d8df4c6719dbcab06b4bf6a58a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/4a6ff36dbba2ee103b79b09996993df93f670742 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/fc8224048e9d3744a7ddadc2231379a143543edb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/72d1c5e064d16c331aa38415ff51a0ca0c66ec7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/52c5f87223da7248d6fd1414a85b6119ed8a7b00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/61502318740cd4c14a844114c8a48dfc153cc17c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/cb6bb51fdcfc67a0e2fb8ade90c668029011a1d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/30369c2c8475e4cbfccc3ab996e55589228623f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/7eb82435c4d9c30004e261a8465ad17efeb7bc3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/53724476f47b75d1376bc22cf1167db62394f040 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/93fae4398db1ae2e98928d15c54072348cf3817b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/b23a605b1ae1cbd2009f4eacd256e33dc4c6de70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/7b12fdef743003033954b8329fbdc0700c947ced .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/cb273fdb6ffeab9b71c90982711acb35c09c666d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/6dee4726706481bcbb1052e8df8d3255a089ea76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/5a5c5936a405dc88cbe7cdf724ded971f6b07a5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/6c0da93b387258a3111062da8425f257d79d4756 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/e4cbb1eef4f3e7033c953cfdeb351aae3c9fcd1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/1de45d79a191a011b092270ffdd9e3b76f4bc396 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/35e36cfb366c37f5ff18336f5ece60f6b22c173f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/e79af4fe754c4b18daae5383ad628e8ee92654d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/24647bedadee078c46c6c5f654c3197e10280d33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/1f0d4f8eb646b9241a4f283b47159ef49aac1030 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/1e4c8b787b55b710b8cf5aa75d28512017ab6d05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/fe5ab814fbbb85445c680a121f3821e83a32c89d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/86f3e694e6eb9515264ba1b68663621233ca45df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/31a578036b8d75d3480596f9dc2a573d33e65340 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/c75b5c7898d8bd814b6df220f67ab9ba0aac499a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/57ca2527ee3438cca19e594aaa686e3f9fc859e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/f6f3506d752f1937b5656dd823ccedd9f2776a0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/42a8252291977ede63b014e0e0361e92ce4d5750 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/32e853f7f2b49b36df76668bd22c56f1498add19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/671bbc09f44de47444464536e3ab2bd7aa421ba5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/a051fb849069e4a7b7f64dfbe2e333a53eca796c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/d01bcdebc6c734c1dc000b67033c1ed0e7264aa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/871e1c8faa4705490cbc0b97f4a8b51bc5bb1e72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/d8e9df69654c60d0e0558ae459e6537a2637bf37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/ac139617dfbee2d56e6fd207f043b5ef0084e054 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/6037384c76ab7133af7968b1c4c393e0efb62e99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/2b054c6cd1b51614ed7482f4bf77463df861cdbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/caca597cbee2eebc54f717d361b198df8389e82b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/549b7515fa25d97d62b237a0dd40d9dfa99eba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/f4ac440dffc7d4047b1a095f347a7f1696db534e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/57cf0c70388333117a00d724b66998993d3c5733 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/8a6c2ad40f588f8cd58d71c90a506d89c4826e9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/a30ed77cd30709dbdc446bcc9cf18573849d979a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/8bfb394a744b53bfe5c3d22fb1d8db6e2d9e933d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/80264f44427cb323b949a9611b4f5dd825a77fe7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/b9cee8d21f6551ddfc3e68c0aa26a15f00571206 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/413b39a44d211558659356d8fbb82258433bb6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/bb3247d8c472cb10ab0c526c707dc984bb86c688 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/828574567d984d4637df2009b29d48789dcfd9d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/7a8c87a1d2d2d3b86f75206f590ee37ecb6fbcf6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/318d6f982102dcaacb688851abf96a99fa47b755 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/df693cec77023abfdfb9316040d1c16cda7398c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/2ffe645de97657d4b12f5ae0c30394975af4236b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/b192c0ae39fbc0e0a3c2ee6a3a6a144b01f4671b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/7618c2804e795759c56a10717f76c63f2c844cd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
