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
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=null
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
SOURCEFILES_QUOTED_IF_SPACED=APP_FILES/lcd_drv_st7920.cpp APP_FILES/debug_uart.cpp APP_FILES/i2c_eeprom.cpp APP_FILES/application.cpp APP_FILES/keypad.cpp ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/main.cpp ../src/config/default/peripheral/can/plib_can1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/debug_uart.o ${OBJECTDIR}/APP_FILES/i2c_eeprom.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/APP_FILES/keypad.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/60165182/plib_can1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o.d ${OBJECTDIR}/APP_FILES/debug_uart.o.d ${OBJECTDIR}/APP_FILES/i2c_eeprom.o.d ${OBJECTDIR}/APP_FILES/application.o.d ${OBJECTDIR}/APP_FILES/keypad.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o ${OBJECTDIR}/APP_FILES/debug_uart.o ${OBJECTDIR}/APP_FILES/i2c_eeprom.o ${OBJECTDIR}/APP_FILES/application.o ${OBJECTDIR}/APP_FILES/keypad.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/60165182/plib_can1.o

# Source Files
SOURCEFILES=APP_FILES/lcd_drv_st7920.cpp APP_FILES/debug_uart.cpp APP_FILES/i2c_eeprom.cpp APP_FILES/application.cpp APP_FILES/keypad.cpp ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/main.cpp ../src/config/default/peripheral/can/plib_can1.c



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

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/9df0c3453ea149bc86aa82f29c9a109aca194a7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/34e3eb7466ee80063c868bdf44a38c94f51d7ec3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/5fca6c04d98ae51aa55730ca715a8c1caccb570d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/7b49579367ed5f24c497e102d8cd9d07cab5fdf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/f33a646aced91eca1e8925d7dc84b048dbd3bc5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/6b0655a2c5bd54ad523e02381641b1364f2d105 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/e6e021efa2deff0e101525bf429e7565d4940cb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/b9001c7eccd70fb2e09acc298eeb4a5a60238db5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/5f6101af46feb4b280a3578dc079abb86221224e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/ecc0d1ddef8d1ad711bf80dfae070df3338f9ba5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/f8bbd0ac980cc278a3e02e2f0c48def71533f67b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/390dd23196d5814087d0db743222aec93c2f6040 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/9a1eef8ac7894be7f5244943a97e243c056b6ad1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/840e13e6de2f4b83123fa539732f6fa1256bad05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/6e44bda94209144173b2f3a64b3d44e622bccd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/d89e4b5f9b1f4e73f632e346b5cf75810b4809f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/618ceda46c7b207a8ec4b544f6af7328f913fb11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/1cfc3870e54abb89d17c81607402c9a4ac7572f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o: ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c  .generated_files/flags/default/e63d871970b26bf86033c85d30d17a45230d4bb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c_smbus_common.o ../src/config/default/peripheral/i2c/plib_i2c_smbus_common.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/12c92ca4a24efbfbcc8c863283bc129b141b768f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/270034ece4caca0addfecbbf9355c66dab8dc7ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/69731a7065b48059d7a517d949a83802bcba7df7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/d349f11482c8121d85c2b8e31c1b7dc87eca6ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/d8ab9e61bdc4eec0b2bbfd5d5933dbfde41c1c4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f4ef8a1f30e6f783a0c25cb8b80caefcb496405d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/feafb0e67eca470958c759c642110f9ce7505e92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o: APP_FILES/lcd_drv_st7920.cpp  .generated_files/flags/default/9807d788fdde0660f5095b9fc682d4ef09ad42c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o APP_FILES/lcd_drv_st7920.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/debug_uart.o: APP_FILES/debug_uart.cpp  .generated_files/flags/default/21a180f849eb5ea2b0006f8dcc1b20a03f8c6c2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/debug_uart.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/debug_uart.o APP_FILES/debug_uart.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/i2c_eeprom.o: APP_FILES/i2c_eeprom.cpp  .generated_files/flags/default/4e8c83ce5310c30ea2fadd63ed56c715cf6e5cc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/i2c_eeprom.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/i2c_eeprom.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/i2c_eeprom.o.d" -o ${OBJECTDIR}/APP_FILES/i2c_eeprom.o APP_FILES/i2c_eeprom.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/c3a9ecfdb6f5e47a7f5067f45d8837ef1be273bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/keypad.o: APP_FILES/keypad.cpp  .generated_files/flags/default/c2e005ca04f60b03d821882b7b19bbc9f410c279 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/keypad.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/keypad.o APP_FILES/keypad.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/6e714bbd9b9f6e4c82c7f9c8e5df419e7b7b6fa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	$(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o: APP_FILES/lcd_drv_st7920.cpp  .generated_files/flags/default/a1c343dc2adf18f86fd287b65a3c2bf0729eee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o.d" -o ${OBJECTDIR}/APP_FILES/lcd_drv_st7920.o APP_FILES/lcd_drv_st7920.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/debug_uart.o: APP_FILES/debug_uart.cpp  .generated_files/flags/default/8e1c81d286ae5b9a795ed9e3796b1aa796968ba5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/debug_uart.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/debug_uart.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/debug_uart.o.d" -o ${OBJECTDIR}/APP_FILES/debug_uart.o APP_FILES/debug_uart.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/i2c_eeprom.o: APP_FILES/i2c_eeprom.cpp  .generated_files/flags/default/c642e656c0dc9fab367a667ec4fb3b85ccfb6ce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/i2c_eeprom.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/i2c_eeprom.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/i2c_eeprom.o.d" -o ${OBJECTDIR}/APP_FILES/i2c_eeprom.o APP_FILES/i2c_eeprom.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/application.o: APP_FILES/application.cpp  .generated_files/flags/default/a970ae324cd24706b76668449cd491ea6c4a8d1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/application.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/application.o.d" -o ${OBJECTDIR}/APP_FILES/application.o APP_FILES/application.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/APP_FILES/keypad.o: APP_FILES/keypad.cpp  .generated_files/flags/default/1d3500ea8a72fb9ee1f9403fb6b8cc01e8f4bd48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP_FILES" 
	@${RM} ${OBJECTDIR}/APP_FILES/keypad.o.d 
	@${RM} ${OBJECTDIR}/APP_FILES/keypad.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/APP_FILES/keypad.o.d" -o ${OBJECTDIR}/APP_FILES/keypad.o APP_FILES/keypad.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/3efd367ab1a9fbf2bf74678298e720fe4d500253 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	$(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"APP_FILES" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	$(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -D=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,${heapsize.emission}512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	
else
${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	$(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab2Project_v0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -D=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),${heapsize.emission}512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
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
