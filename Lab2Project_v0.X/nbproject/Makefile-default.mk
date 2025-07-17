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
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/261acad0a5e3ddb834c4e455d3c2c5aaf12968bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/1dec523d50ce535c60e1085b9de8916ab6ad600b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/8c547eb2ba3011621f423f5eb4f9b4dff3a124fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/5d40790b8f77efb8a0d7b1d6719e18dfc267611d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/4c5c6851b01b46846a05a92873143e78c3a82d02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/5dba389335fdc548117cceaf1583f5936ad4e4e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/b8b80bd8649abf638caba854b2144a60afe34040 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/b1063fc66b23c53cb268249ce402f5e87cc3bf86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/9775f3faa019cfda01296f4f235b1cd24a508653 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/22daea69dc4a1451b8374f6b6a3b95b656fdf570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/c9afec19c99e1c76559ee19fed83d11b8fc30b72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/a4c4be00eee94859d133e43c8a8a63928cd7ace7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/2ecddee3ebe2e0d0630f3f88dfe7da48b0c403a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/a31f0c3c0dd9f857f2ccc2621a2322fc91083845 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/768199c04ab725cc00a34b14b1fb42fd4215677a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/fa999cc6d31b6d8d01d0cd7d57b6fdd956cf2a07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/586c96f0afdbc182120772e39f5420dfbfcc0415 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/64985a066a7aabd41561baa876e04991bcccdb1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/7480c659252c2646d076c9613c81f2a02087776c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/fc60650ea6bf7895ee0d7e1a749dd3fb4cb61249 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/1da6f32367c579337d5bfe0fd1b10e78051d93f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/f1e1d60e589e7e94c75619f2d911415391b5bcee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/df8c58e4ae39ad409611f55b66c041fea474f70e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/efbde71dcaeadd2d4d8d3ba8fa2f3b707855edb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/7c1d116b2b33a20b3259b0fb8dede12770b4952b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5ed84947deec5f3d0d32a958c1af5d83ab8fec89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/a6f00218c42c20fd10f547c359d33757e0835902 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/847008954f7e3fad432bc5824912e9c3adc98ca3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/8b63949f3db167255bb43b471afb8b4eda843533 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/937ffae7752531fb25ccd6d70374e4afb6f26d4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/49beaf95752b8f85d39b854c069573fd6e95dd8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/41e196c93127563a199074b59b0604fb29975882 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/c8d63cf043cdf52425337b5553168bee8dd1c916 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/6404216de3ee1f8427bfaacdafa50b767514028f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/d8f1693e3119664e8934e58bac75b96ed4397ec5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/8af3341f8d0ca46e7e413d0c906b2337a072e8ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/ec235049dfd79454841084df0d5615e7b5248ea7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/bf4e2b783852939df5f33c963e31fd46c7fd64ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/445ef6616c0aceb9b7d22d23be23d2f6b28a3b80 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/68ad74d13097e4a41323343dc221cc21c91e8d50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/4bc2489cddd94604e3048302da3df9baba8cc61f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/6a20f06199f0eced2cda42885ab8176f631b1e4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/d937318acf9f2be3bf3eff784cdb4e71a71cef94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/af60214d33d17c93129996442646e0bd27b68346 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o: APP_FILES/DEVICES/can_protocol.cpp  .generated_files/flags/default/e5e9fe40c4dcb706b83b2308dab12520b293c902 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/can_protocol.o APP_FILES/DEVICES/can_protocol.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o: APP_FILES/DEVICES/debug_uart.cpp  .generated_files/flags/default/71e69db6424196e4e345130f55378f2235043629 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/debug_uart.o APP_FILES/DEVICES/debug_uart.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o: APP_FILES/DEVICES/eeprom_24cxx.cpp  .generated_files/flags/default/8fc0491e30fe023f142ad0098444343f41428063 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/eeprom_24cxx.o APP_FILES/DEVICES/eeprom_24cxx.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/keypad.o: APP_FILES/DEVICES/keypad.cpp  .generated_files/flags/default/fd37dd47a973ba51a83020bdbd6c4f149fc22fcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/keypad.o APP_FILES/DEVICES/keypad.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o: APP_FILES/DEVICES/lcd_12864.cpp  .generated_files/flags/default/3a8505b18362b95976a6e3a431a64f6ec3da20ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/lcd_12864.o APP_FILES/DEVICES/lcd_12864.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o: APP_FILES/DEVICES/door_lock.cpp  .generated_files/flags/default/5e120c4d0d97d9a26b086db3c4770542aa0e91c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DEVICES" 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o.d" -o ${OBJECTDIR}/APP_FILES/DEVICES/door_lock.o APP_FILES/DEVICES/door_lock.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o: APP_FILES/DRIVERS/lcd_drv_st7920.cpp  .generated_files/flags/default/c6e661ec63b1a0b396aa021555b82952f25461f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/DRIVERS" 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/DRIVERS/lcd_drv_st7920.o APP_FILES/DRIVERS/lcd_drv_st7920.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o: APP_FILES/EXAMPLES/codec_user_test.cpp  .generated_files/flags/default/b89e90f10c33a1566247f224180503d3be499c13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/codec_user_test.o APP_FILES/EXAMPLES/codec_user_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o: APP_FILES/EXAMPLES/keypad_test.cpp  .generated_files/flags/default/31ace48af818519cf9c51b75bcf5f70f83ef2a7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/keypad_test.o APP_FILES/EXAMPLES/keypad_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o: APP_FILES/EXAMPLES/debug_uart_test.cpp  .generated_files/flags/default/4be59eb3518a8c74504fa8c2c999fa7e941427e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/debug_uart_test.o APP_FILES/EXAMPLES/debug_uart_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o: APP_FILES/EXAMPLES/eeprom_test.cpp  .generated_files/flags/default/f5628fdb7928f2fade1e68cacbd636edaf532e92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/eeprom_test.o APP_FILES/EXAMPLES/eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o: APP_FILES/EXAMPLES/can_eeprom_test.cpp  .generated_files/flags/default/e0a861bf69475dc2676dc006dbae535e758c9101 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/can_eeprom_test.o APP_FILES/EXAMPLES/can_eeprom_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o: APP_FILES/EXAMPLES/door_lock_test.cpp  .generated_files/flags/default/960d53cd99d7036374288d2bdc777cd04d91974f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/EXAMPLES" 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o.d" -o ${OBJECTDIR}/APP_FILES/EXAMPLES/door_lock_test.o APP_FILES/EXAMPLES/door_lock_test.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o: APP_FILES/LIBRARIES/user_manager.cpp  .generated_files/flags/default/41ec00c353a066c1b4c414171e0340789049863c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/LIBRARIES" 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o.d" -o ${OBJECTDIR}/APP_FILES/LIBRARIES/user_manager.o APP_FILES/LIBRARIES/user_manager.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/codec_user.o: APP_FILES/UTILS/codec_user.cpp  .generated_files/flags/default/9a232031be78e9775a6ac1f97b51e9b60aca60bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/codec_user.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/codec_user.o APP_FILES/UTILS/codec_user.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/UTILS/delay.o: APP_FILES/UTILS/delay.cpp  .generated_files/flags/default/e0aaed28ad280beb949a26b08be3019e96c74ece .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES/UTILS" 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/UTILS/delay.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/UTILS/delay.o.d" -o ${OBJECTDIR}/APP_FILES/UTILS/delay.o APP_FILES/UTILS/delay.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/61369ba9fc2f01d27c51771d5ca14dd5fccef33f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -I"APP_FILES/DRIVERS" -I"APP_FILES/DEVICES" -I"APP_FILES/COMMONS" -I"APP_FILES/UTILS" -I"APP_FILES/EXAMPLES" -I"APP_FILES/UTILS" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/1a09b79a6e5714a2f6942b63658c6c904f95833e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
