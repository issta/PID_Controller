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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/main.c src/FreeRTOS/portable/MemMang/heap_1.c src/FreeRTOS/list.c src/FreeRTOS/queue.c src/FreeRTOS/tasks.c src/FreeRTOS/portable/MPLAB/PIC18F/port.c src/serial/serial.c src/PID/PID.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/src/FreeRTOS/list.o ${OBJECTDIR}/src/FreeRTOS/queue.o ${OBJECTDIR}/src/FreeRTOS/tasks.o ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o ${OBJECTDIR}/src/serial/serial.o ${OBJECTDIR}/src/PID/PID.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o.d ${OBJECTDIR}/src/FreeRTOS/list.o.d ${OBJECTDIR}/src/FreeRTOS/queue.o.d ${OBJECTDIR}/src/FreeRTOS/tasks.o.d ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o.d ${OBJECTDIR}/src/serial/serial.o.d ${OBJECTDIR}/src/PID/PID.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/src/FreeRTOS/list.o ${OBJECTDIR}/src/FreeRTOS/queue.o ${OBJECTDIR}/src/FreeRTOS/tasks.o ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o ${OBJECTDIR}/src/serial/serial.o ${OBJECTDIR}/src/PID/PID.o

# Source Files
SOURCEFILES=src/main.c src/FreeRTOS/portable/MemMang/heap_1.c src/FreeRTOS/list.c src/FreeRTOS/queue.c src/FreeRTOS/tasks.c src/FreeRTOS/portable/MPLAB/PIC18F/port.c src/serial/serial.c src/PID/PID.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/main.o   src/main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o: src/FreeRTOS/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o   src/FreeRTOS/portable/MemMang/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/list.o: src/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/list.o   src/FreeRTOS/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/queue.o: src/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/queue.o   src/FreeRTOS/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/tasks.o: src/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/tasks.o   src/FreeRTOS/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o: src/FreeRTOS/portable/MPLAB/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o   src/FreeRTOS/portable/MPLAB/PIC18F/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/serial/serial.o: src/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/serial 
	@${RM} ${OBJECTDIR}/src/serial/serial.o.d 
	@${RM} ${OBJECTDIR}/src/serial/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/serial/serial.o   src/serial/serial.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/serial/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/src/serial/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/PID/PID.o: src/PID/PID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/PID 
	@${RM} ${OBJECTDIR}/src/PID/PID.o.d 
	@${RM} ${OBJECTDIR}/src/PID/PID.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/PID/PID.o   src/PID/PID.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/PID/PID.o 
	@${FIXDEPS} "${OBJECTDIR}/src/PID/PID.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/main.o   src/main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o: src/FreeRTOS/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o   src/FreeRTOS/portable/MemMang/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/portable/MemMang/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/list.o: src/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/list.o   src/FreeRTOS/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/queue.o: src/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/queue.o   src/FreeRTOS/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/tasks.o: src/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/tasks.o   src/FreeRTOS/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o: src/FreeRTOS/portable/MPLAB/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o.d 
	@${RM} ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o   src/FreeRTOS/portable/MPLAB/PIC18F/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/FreeRTOS/portable/MPLAB/PIC18F/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/serial/serial.o: src/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/serial 
	@${RM} ${OBJECTDIR}/src/serial/serial.o.d 
	@${RM} ${OBJECTDIR}/src/serial/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/serial/serial.o   src/serial/serial.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/serial/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/src/serial/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/src/PID/PID.o: src/PID/PID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/PID 
	@${RM} ${OBJECTDIR}/src/PID/PID.o.d 
	@${RM} ${OBJECTDIR}/src/PID/PID.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMPLAB_PIC18F_PORT -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"src/FreeRTOS/include" -I"src/FreeRTOS/portable/MPLAB/PIC18F" -I"src/FreeRTOS" -I"src/serial" -I"src/PID" -I"src" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/src/PID/PID.o   src/PID/PID.c 
	@${DEP_GEN} -d ${OBJECTDIR}/src/PID/PID.o 
	@${FIXDEPS} "${OBJECTDIR}/src/PID/PID.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    src/18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "src\18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"src"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   src/18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "src\18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"src"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PID_C18_FreeRTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
