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
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/c43077ce65870e318b7c309991855cf7c2a84714 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/c84db1040a8479eab0d3fef63bd638cc8d606bac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/14176d97104b0156429dbbeb84b00e7626101da9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/52b4dab6190a4c1cca7f3f78fd860ee8f6b5c21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/435eef6c6573904896159ff13dd5bd6d09a62e26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/8d667b490ddf907b236dff6a32e2834508f43a3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/9b50258e15c8116a2e07c3474259d9e98846d7fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/2c6aeb0f247314c685794c4efc722f4a46ea0323 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/63cae832ecc923c4b519594d1d8efac9a2cdfaa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/d6b60ecbb074f56f6afc791f14eb794996455c9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/3073e1e844d3074601b5847264cf03085ece85c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/6b30d5f35057848ccf645a4ce62f8c4b74c766d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/78e501f28b1cbb3aae97c5fa02ce0903f58d69c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/956d413e804a887f9df2aa4f711ca334112b9d68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/b06f4fcece595cc96c80675bd28dc0a7d405327d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/3a206f1aa112516240b0964eeb29ff5c57f9705f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/bac261a0c45377e213ccaa7dfa0ad4c46bf3f898 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/c85797b829cab317783e63a37530b5e631dd69ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/a33ca8f4113c5c48c613308b920b8043b4f95d27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/4b2ed3c5742938a42a27187c4fce5fa0c4e228eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/e5bf891662fdfd736e10307dd911df07dcc715f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/c12fc4d2230cfc18c946bcc16eb7cde5aa86ef9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/befd049007cae4aa45df2da81027878e07a389da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/4af9b97e935fb575be27fa78f266f36b63f8e1f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/e682da2f23dd3cf60ee887b324b74221fcb77f3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/b44236abd4e098c7574449c2dcca6bf8cdd96e46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/d60136f4a968070df1720126b69b4a74dc73e99c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/eb4864c87d192ba4b7f11342d51cae81031e5b2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/f31950912cb3954a3d5297c3fa3ab042fea20fc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/878e30a68a7e0d33212662df09553e76a7e70640 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/1adbbf915dbba38383b2d937af6dc0587049be1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/d389061098d3bde3fec3f1370e96bc07fc00b7ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/6507c1d08f17b3c0c1c14bf9c8179c2ad3a661a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/9945a49944cfa625b953824e13077a6183c1ae8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/9aac678664d215ad426e2f580b4a2c7faa7bfdac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/a68936bcb7b1a90fbeb4c0f1033d0b4bd978205d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/df9e60e7bd27ed8c0dc93ad68f80cc305b482294 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/ea9014ce129921ebe617eccf18603f54fa15194b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/41c1e3a3d24b565499315a54bc203ad12da0bd2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/a4fc9cca854dcc529435bd6abe2bd0109496bbe5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/cb8ae7cf7ffaa6327b5b13d7fec04452eae1f6a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/e73240f9d2353699b0f358a33ad3b62197a7888d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/3a67e2482081ced76da72c88b5b56e656b183c09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/4ea3859288a15625f737131c96e807d982688af7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/7374ede44ea78500fded163aae3f068c3a8a04a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/2bfcd29edd300308399435d720e04c4f4bf8e027 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/49aa7e708055fc907d92024cce26eb74a29e9fff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/a556bbb52e85b4cf9db8c851d80b54cace82e7d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/f4ef620fe107908358dd356237245139c77aa7e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/85e0a198cb23c5e23bc0c1b90f61fe14dfe4e6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/bd6d36fcb41e65514b4e5b174024b58aaa4b1003 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/2073eaff59bce5ec8752caecce968eb3775b0a5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/5bb98fb2188279d252aa4ead7641d2bdae5c099f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/4593c0b2d6c8505d3686f1b34ebf43d5b6aca6ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/89908f494bfd26308a1ed9f7ece9ec8153cf5838 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/bba79a77f3ed1642eaf74ee8953f964b3854744c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/b02c79b1e392efc32de41af074e6ecaaea749ef0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/8ff764cc53435da34316e10fe3f13c7048ee8849 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/71f3efa35bd4d6e9109c1217f35f58dd8eec6aa1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/fcb0013a22ea26f9d0add90e06d6e28e2343a877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/8c3048b3fcb9a11a999a14c5d555ce73feb0cc28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/25c7b1e63069f428f78a9d77d794eaa66d28680c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
