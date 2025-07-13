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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c APP_FILES/DEVICES/can_protocol.cpp APP_FILES/DEVICES/debug_uart.cpp APP_FILES/DEVICES/eeprom_24cxx.cpp APP_FILES/DEVICES/keypad.cpp APP_FILES/DRIVERS/lcd_drv_st7920.cpp APP_FILES/application.cpp APP_FILES/UTILS/codec_user.cpp APP_FILES/UTILS/delay.cpp APP_FILES/LIBRARIES/user_manager.cpp APP_FILES/DEVICES/lcd_12864.cpp APP_FILES/DEVICES/door_lock.cpp APP_FILES/EXAMPLES/can_eeprom_test.cpp APP_FILES/EXAMPLES/can_protocol_test.cpp APP_FILES/EXAMPLES/codec_user_test.cpp APP_FILES/EXAMPLES/keypad_test.cpp APP_FILES/EXAMPLES/debug_uart_test.cpp ../src/main.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o ${OBJECTDIR}/APP_FILES/UTILS/delay.o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d ${OBJECTDIR}/APP_FILES/application.o.d ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o ${OBJECTDIR}/APP_FILES/UTILS/delay.o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c APP_FILES/DEVICES/can_protocol.cpp APP_FILES/DEVICES/debug_uart.cpp APP_FILES/DEVICES/eeprom_24cxx.cpp APP_FILES/DEVICES/keypad.cpp APP_FILES/DRIVERS/lcd_drv_st7920.cpp APP_FILES/application.cpp APP_FILES/UTILS/codec_user.cpp APP_FILES/UTILS/delay.cpp APP_FILES/LIBRARIES/user_manager.cpp APP_FILES/DEVICES/lcd_12864.cpp APP_FILES/DEVICES/door_lock.cpp APP_FILES/EXAMPLES/can_eeprom_test.cpp APP_FILES/EXAMPLES/can_protocol_test.cpp APP_FILES/EXAMPLES/codec_user_test.cpp APP_FILES/EXAMPLES/keypad_test.cpp APP_FILES/EXAMPLES/debug_uart_test.cpp ../src/main.cpp



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
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/210a3b4d9252d9d2b465995be4d531ea8301a70b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/13d0147d0e4d2762d3e16decd54097051079af5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/c6d342fa634f1d3a06c6849a03e73346d3706503 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/72754eedb6d707bb9f5b874d35e48f4a3910ef15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/aadc54f23170c2a0116b571205fca4bdc51adf78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/fed4a4870dac5ed0059d917f07d6d918d15ef4ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/abc05a5c87c596117e0fb899d96384e54649ab4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/3f55cfc5ee62859f8a99ba1ee081950fa056bbb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/620cad46f8dfdffbb3e9aba96133b5d666326380 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/63ec13e66a19c6151c8a30b64a83b22781639afa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/3aa522fff37987f60438dfbe06cae79a525ecb7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/904e6d3bf0e95e4ac7e1755fbceae5d5372ec837 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/acb89952e9e7709aa1495f9e30e284b713194c89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/7105d78f0db618f28eb788dc51722f490d3b1bcc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/fedbe021ef372d7cff7578b26023254cc229a559 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/1294ca9e4580eb16c55fea65eb86f9d5169582b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/f6c96fee3d8d9a029c3e554fcf03efd68cb09977 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/ab642627c821a7c67708b72a1c303a0559271744 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/913fc37157abe92c90c9a99992051743d5bf9f13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/76c1df0d962e349d77e7b97a391b5ddb21ff49c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/e20bb1d11d688826bdc13aaeac4cc329139672dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/b4bd1052c4a8a9bc811760bc63601b30d2f77f38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/480886c52b9fb614ab06b7e95adc8f8c56de02b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/2a6780abaeedc29ca0cf2e0e5f364b9ca1aaaa68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/2e57eec75f15a6d82bad2c3143c9db071979385b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/a6efe0ae1ae294fe603aebad198a5fad7a7984a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/4bc8b8d3ce32cfb3e022375d4764403f3b101cbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/9577347ee1dccd3be7ffa5cd7216a77c41808ec4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/52315fc28e34b288c6a33a02e189e28e6d669be3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/96ea70f1228f0a74eb668a6fc79b560ddfce7f61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/218250a1e51ff948f4f4cae31927e74873873049 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/400c11c24e355473216f7a1af9cd75cc0cfb3c36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/1a78bdd0dc4e8187e13e9303be1d16c627b319c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/7cec723cd5838857bcbf67ebc573b5174a1cc24b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/238acbbf11674b1ad03a9d100e5192ae0a44526b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/9215518ef1e20b4ba56834034623276ce4c9a39c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/44decbbfe896e74f8d1c93b9bc62e9be3c935770 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/2d4725746121d780c67e41bf6a142f423ed9e82e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o: APP_FILES/EXAMPLES/can_protocol_test.cpp  .generated_files/flags/default/7b9f2ad024b78ae19f5bc2ee495cc92597aa0064 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o APP_FILES/EXAMPLES/can_protocol_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/6bd09aa56ce8abaa735a331e5eb4a2ca02bdf071 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/28111970b24687163bb5c1fd1fbe72342e5a236f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/e4eaff96cbfa000d89cd1b638332655df38aedab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/eb45992261ee7077affc4d0e64331d13e912e313 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/35722b725f40cd43bc24d9d061b762273a7c7008 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/d499978dd17a00b6def25100f0d2addfe462bcb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/c821d07d8099d5f722726152621c492b782fff5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/3337e3e7b73a8dce1148ed75d779ff85600277a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/ad8015725286ad2eba897c5737c152390d6749a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/cb81aedb9df8d9d93d8d8cfd9ce04446167fe193 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/a605b438d01129723bc0f4ba64de378523bd49d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/8e1829e99f958388df05c48940a9912c53e3adac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/c5e01b854128fbf15f97fc8c7e6372d80e1f0949 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/bd0b5e69e84d15c0939b7e259e8e1e2f144188f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/17520b377dd6693fab8190eaa05cbbc38909ba09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/7519bbc9614493a897281778094d7700b0344971 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o: APP_FILES/EXAMPLES/can_protocol_test.cpp  .generated_files/flags/default/50ee92a19128bfe43fbe2709b3e41edf63fdb913 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_protocol_test.o APP_FILES/EXAMPLES/can_protocol_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/4265102f8c1d2a0d6cff86e8b54d6084a81e6dfd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/87f90c3f5ae542b4883aebcbe206b1dbd6933ec0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/d444cce25dd9968a808f02f0291aa6e22fec4377 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/c1b02048386ff859e5343789786bff9a8e46a9d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
