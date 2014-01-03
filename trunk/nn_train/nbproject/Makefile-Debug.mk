#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Debug
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/usr/lib -lcxcore -lcvaux -lhighgui -lcv -lml ../nn_lib/dist/Debug/GNU-Linux-x86/libnn_lib.a -lfann

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-Debug.mk dist/Debug/GNU-Linux-x86/nn_train

dist/Debug/GNU-Linux-x86/nn_train: ../nn_lib/dist/Debug/GNU-Linux-x86/libnn_lib.a

dist/Debug/GNU-Linux-x86/nn_train: ${OBJECTFILES}
	${MKDIR} -p dist/Debug/GNU-Linux-x86
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/nn_train ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/include -I../nn_lib -I/usr/include/opencv -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:
	cd ../nn_lib && ${MAKE}  -f Makefile CONF=Debug
	cd ../nn_lib && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Debug
	${RM} dist/Debug/GNU-Linux-x86/nn_train

# Subprojects
.clean-subprojects:
	cd ../nn_lib && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../nn_lib && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
