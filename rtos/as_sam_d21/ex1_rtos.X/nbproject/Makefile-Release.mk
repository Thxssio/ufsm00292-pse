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
ifeq "$(wildcard nbproject/Makefile-local-Release.mk)" "nbproject/Makefile-local-Release.mk"
include nbproject/Makefile-local-Release.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c ../src/ASF/sam0/drivers/port/port.c ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c ../src/ASF/sam0/drivers/system/pinmux/pinmux.c ../src/ASF/sam0/drivers/system/system.c ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c ../src/cpu-port.c ../src/rtos.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o ${OBJECTDIR}/_ext/1502292737/board_init.o ${OBJECTDIR}/_ext/876312722/port.o ${OBJECTDIR}/_ext/519451615/clock.o ${OBJECTDIR}/_ext/519451615/gclk.o ${OBJECTDIR}/_ext/1234282992/system_interrupt.o ${OBJECTDIR}/_ext/980481618/pinmux.o ${OBJECTDIR}/_ext/227780132/system.o ${OBJECTDIR}/_ext/1126068005/startup_samd21.o ${OBJECTDIR}/_ext/540691939/system_samd21.o ${OBJECTDIR}/_ext/1284275751/syscalls.o ${OBJECTDIR}/_ext/1360937237/cpu-port.o ${OBJECTDIR}/_ext/1360937237/rtos.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o.d ${OBJECTDIR}/_ext/1502292737/board_init.o.d ${OBJECTDIR}/_ext/876312722/port.o.d ${OBJECTDIR}/_ext/519451615/clock.o.d ${OBJECTDIR}/_ext/519451615/gclk.o.d ${OBJECTDIR}/_ext/1234282992/system_interrupt.o.d ${OBJECTDIR}/_ext/980481618/pinmux.o.d ${OBJECTDIR}/_ext/227780132/system.o.d ${OBJECTDIR}/_ext/1126068005/startup_samd21.o.d ${OBJECTDIR}/_ext/540691939/system_samd21.o.d ${OBJECTDIR}/_ext/1284275751/syscalls.o.d ${OBJECTDIR}/_ext/1360937237/cpu-port.o.d ${OBJECTDIR}/_ext/1360937237/rtos.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o ${OBJECTDIR}/_ext/1502292737/board_init.o ${OBJECTDIR}/_ext/876312722/port.o ${OBJECTDIR}/_ext/519451615/clock.o ${OBJECTDIR}/_ext/519451615/gclk.o ${OBJECTDIR}/_ext/1234282992/system_interrupt.o ${OBJECTDIR}/_ext/980481618/pinmux.o ${OBJECTDIR}/_ext/227780132/system.o ${OBJECTDIR}/_ext/1126068005/startup_samd21.o ${OBJECTDIR}/_ext/540691939/system_samd21.o ${OBJECTDIR}/_ext/1284275751/syscalls.o ${OBJECTDIR}/_ext/1360937237/cpu-port.o ${OBJECTDIR}/_ext/1360937237/rtos.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c ../src/ASF/sam0/drivers/port/port.c ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c ../src/ASF/sam0/drivers/system/pinmux/pinmux.c ../src/ASF/sam0/drivers/system/system.c ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c ../src/cpu-port.c ../src/rtos.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-Release.mk ${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
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
${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o: ../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c  .generated_files/flags/Release/74e3ab03ac41aa84e1cdcc92d4fe414a67f619ba .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939168694" 
	@${RM} ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o.d" -o ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o ../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1502292737/board_init.o: ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c  .generated_files/flags/Release/8c5834e147654a291a605566e0e0d89cad239f5a .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1502292737" 
	@${RM} ${OBJECTDIR}/_ext/1502292737/board_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1502292737/board_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1502292737/board_init.o.d" -o ${OBJECTDIR}/_ext/1502292737/board_init.o ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876312722/port.o: ../src/ASF/sam0/drivers/port/port.c  .generated_files/flags/Release/1104e79b4e13d6b6b3ceb77acc34b58a985e58fc .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/876312722" 
	@${RM} ${OBJECTDIR}/_ext/876312722/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/876312722/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876312722/port.o.d" -o ${OBJECTDIR}/_ext/876312722/port.o ../src/ASF/sam0/drivers/port/port.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/519451615/clock.o: ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c  .generated_files/flags/Release/e345167f826baf68cae309925fcb41204e293dea .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/519451615" 
	@${RM} ${OBJECTDIR}/_ext/519451615/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/519451615/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/519451615/clock.o.d" -o ${OBJECTDIR}/_ext/519451615/clock.o ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/519451615/gclk.o: ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c  .generated_files/flags/Release/db4aee860e6d2be33cad96e737e59bb15701b1bb .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/519451615" 
	@${RM} ${OBJECTDIR}/_ext/519451615/gclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/519451615/gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/519451615/gclk.o.d" -o ${OBJECTDIR}/_ext/519451615/gclk.o ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1234282992/system_interrupt.o: ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c  .generated_files/flags/Release/c5f071adaa9ab59d8ddf5cc6ef1c64e299ff0fe8 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1234282992" 
	@${RM} ${OBJECTDIR}/_ext/1234282992/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1234282992/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1234282992/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1234282992/system_interrupt.o ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/980481618/pinmux.o: ../src/ASF/sam0/drivers/system/pinmux/pinmux.c  .generated_files/flags/Release/f60b6e0241c0cd56c39797706a8b8a2da86e47b9 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/980481618" 
	@${RM} ${OBJECTDIR}/_ext/980481618/pinmux.o.d 
	@${RM} ${OBJECTDIR}/_ext/980481618/pinmux.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/980481618/pinmux.o.d" -o ${OBJECTDIR}/_ext/980481618/pinmux.o ../src/ASF/sam0/drivers/system/pinmux/pinmux.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/227780132/system.o: ../src/ASF/sam0/drivers/system/system.c  .generated_files/flags/Release/dec29e3d842d7c342408f2bfcaa6f8512adf7a1 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/227780132" 
	@${RM} ${OBJECTDIR}/_ext/227780132/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/227780132/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/227780132/system.o.d" -o ${OBJECTDIR}/_ext/227780132/system.o ../src/ASF/sam0/drivers/system/system.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1126068005/startup_samd21.o: ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c  .generated_files/flags/Release/9b66886649f5125eaec1ff7205c3a94323d00596 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1126068005" 
	@${RM} ${OBJECTDIR}/_ext/1126068005/startup_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1126068005/startup_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1126068005/startup_samd21.o.d" -o ${OBJECTDIR}/_ext/1126068005/startup_samd21.o ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/540691939/system_samd21.o: ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c  .generated_files/flags/Release/c7e9a2e509980a57b90532761ac9915606db4bf0 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/540691939" 
	@${RM} ${OBJECTDIR}/_ext/540691939/system_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/540691939/system_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/540691939/system_samd21.o.d" -o ${OBJECTDIR}/_ext/540691939/system_samd21.o ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1284275751/syscalls.o: ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c  .generated_files/flags/Release/6330508d35e8fc63ebaf8983de1673af005f82b1 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1284275751" 
	@${RM} ${OBJECTDIR}/_ext/1284275751/syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1284275751/syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1284275751/syscalls.o.d" -o ${OBJECTDIR}/_ext/1284275751/syscalls.o ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cpu-port.o: ../src/cpu-port.c  .generated_files/flags/Release/3ff45581709bee5524b399eef58ce206de3fb53f .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpu-port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpu-port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cpu-port.o.d" -o ${OBJECTDIR}/_ext/1360937237/cpu-port.o ../src/cpu-port.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtos.o: ../src/rtos.c  .generated_files/flags/Release/d6ae38f3791f8cc387660b4bba207497fac6637d .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtos.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtos.o ../src/rtos.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/Release/302bab6c3efcd1ee2fb7a113d750301c5b818817 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o: ../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c  .generated_files/flags/Release/f6481d54c5f1dab2174eeb38e35b5877023184a7 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939168694" 
	@${RM} ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o.d" -o ${OBJECTDIR}/_ext/1939168694/interrupt_sam_nvic.o ../src/ASF/common/utils/interrupt/interrupt_sam_nvic.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1502292737/board_init.o: ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c  .generated_files/flags/Release/6f89d36649c85c772243ae514806ff4757fb8b18 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1502292737" 
	@${RM} ${OBJECTDIR}/_ext/1502292737/board_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1502292737/board_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1502292737/board_init.o.d" -o ${OBJECTDIR}/_ext/1502292737/board_init.o ../src/ASF/sam0/boards/samd21_xplained_pro/board_init.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876312722/port.o: ../src/ASF/sam0/drivers/port/port.c  .generated_files/flags/Release/67fb3cdb90b745042f78edc4da91dd300b500b08 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/876312722" 
	@${RM} ${OBJECTDIR}/_ext/876312722/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/876312722/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876312722/port.o.d" -o ${OBJECTDIR}/_ext/876312722/port.o ../src/ASF/sam0/drivers/port/port.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/519451615/clock.o: ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c  .generated_files/flags/Release/e9b43549469d5fe730c9f8320717f59c4c0d32d4 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/519451615" 
	@${RM} ${OBJECTDIR}/_ext/519451615/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/519451615/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/519451615/clock.o.d" -o ${OBJECTDIR}/_ext/519451615/clock.o ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/clock.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/519451615/gclk.o: ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c  .generated_files/flags/Release/659a81f3aef7eda78f2fc60270cc815e25c18de .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/519451615" 
	@${RM} ${OBJECTDIR}/_ext/519451615/gclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/519451615/gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/519451615/gclk.o.d" -o ${OBJECTDIR}/_ext/519451615/gclk.o ../src/ASF/sam0/drivers/system/clock/clock_samd21_r21_da/gclk.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1234282992/system_interrupt.o: ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c  .generated_files/flags/Release/da476c0039cac76b48f062e0ed800408e7a7a427 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1234282992" 
	@${RM} ${OBJECTDIR}/_ext/1234282992/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1234282992/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1234282992/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1234282992/system_interrupt.o ../src/ASF/sam0/drivers/system/interrupt/system_interrupt.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/980481618/pinmux.o: ../src/ASF/sam0/drivers/system/pinmux/pinmux.c  .generated_files/flags/Release/1ca4e9a61c6814b3f3eb683be0bb90c887c20701 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/980481618" 
	@${RM} ${OBJECTDIR}/_ext/980481618/pinmux.o.d 
	@${RM} ${OBJECTDIR}/_ext/980481618/pinmux.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/980481618/pinmux.o.d" -o ${OBJECTDIR}/_ext/980481618/pinmux.o ../src/ASF/sam0/drivers/system/pinmux/pinmux.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/227780132/system.o: ../src/ASF/sam0/drivers/system/system.c  .generated_files/flags/Release/f94c25256bbc5d0b383bb062fd3c2569bf1e9b6a .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/227780132" 
	@${RM} ${OBJECTDIR}/_ext/227780132/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/227780132/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/227780132/system.o.d" -o ${OBJECTDIR}/_ext/227780132/system.o ../src/ASF/sam0/drivers/system/system.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1126068005/startup_samd21.o: ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c  .generated_files/flags/Release/8901778f574d430f25bb922f88342831b73c75ea .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1126068005" 
	@${RM} ${OBJECTDIR}/_ext/1126068005/startup_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1126068005/startup_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1126068005/startup_samd21.o.d" -o ${OBJECTDIR}/_ext/1126068005/startup_samd21.o ../src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/540691939/system_samd21.o: ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c  .generated_files/flags/Release/9e9d6a401bf8bb0399b8ccd25d0b2767a1127809 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/540691939" 
	@${RM} ${OBJECTDIR}/_ext/540691939/system_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/540691939/system_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/540691939/system_samd21.o.d" -o ${OBJECTDIR}/_ext/540691939/system_samd21.o ../src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1284275751/syscalls.o: ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c  .generated_files/flags/Release/707c204845322c137898e48c059b89b052f000a6 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1284275751" 
	@${RM} ${OBJECTDIR}/_ext/1284275751/syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1284275751/syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1284275751/syscalls.o.d" -o ${OBJECTDIR}/_ext/1284275751/syscalls.o ../src/ASF/sam0/utils/syscalls/gcc/syscalls.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cpu-port.o: ../src/cpu-port.c  .generated_files/flags/Release/2d7fc84366d342aeb7ba27bf0bf001ac2c0373b3 .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpu-port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpu-port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cpu-port.o.d" -o ${OBJECTDIR}/_ext/1360937237/cpu-port.o ../src/cpu-port.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtos.o: ../src/rtos.c  .generated_files/flags/Release/b10d834ccd995eb57e528b4ad3358e10c5e99c4f .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtos.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtos.o ../src/rtos.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/Release/973cb6ea7d062dd19b51f2693c61ad53bed6e71f .generated_files/flags/Release/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Release=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/ex1_rtos.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
