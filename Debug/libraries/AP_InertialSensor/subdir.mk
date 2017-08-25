################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_InertialSensor/AP_InertialSensor.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_Backend.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_Flymaple.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_HIL.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_L3G4200D.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_LSM9DS0.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_MPU6000.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_MPU9250.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_PX4.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_QURT.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_SITL.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_MAVLink.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_Stream.cpp \
../libraries/AP_InertialSensor/AP_InertialSensor_qflight.cpp \
../libraries/AP_InertialSensor/AuxiliaryBus.cpp 

OBJS += \
./libraries/AP_InertialSensor/AP_InertialSensor.o \
./libraries/AP_InertialSensor/AP_InertialSensor_Backend.o \
./libraries/AP_InertialSensor/AP_InertialSensor_Flymaple.o \
./libraries/AP_InertialSensor/AP_InertialSensor_HIL.o \
./libraries/AP_InertialSensor/AP_InertialSensor_L3G4200D.o \
./libraries/AP_InertialSensor/AP_InertialSensor_LSM9DS0.o \
./libraries/AP_InertialSensor/AP_InertialSensor_MPU6000.o \
./libraries/AP_InertialSensor/AP_InertialSensor_MPU9250.o \
./libraries/AP_InertialSensor/AP_InertialSensor_PX4.o \
./libraries/AP_InertialSensor/AP_InertialSensor_QURT.o \
./libraries/AP_InertialSensor/AP_InertialSensor_SITL.o \
./libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_MAVLink.o \
./libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_Stream.o \
./libraries/AP_InertialSensor/AP_InertialSensor_qflight.o \
./libraries/AP_InertialSensor/AuxiliaryBus.o 

CPP_DEPS += \
./libraries/AP_InertialSensor/AP_InertialSensor.d \
./libraries/AP_InertialSensor/AP_InertialSensor_Backend.d \
./libraries/AP_InertialSensor/AP_InertialSensor_Flymaple.d \
./libraries/AP_InertialSensor/AP_InertialSensor_HIL.d \
./libraries/AP_InertialSensor/AP_InertialSensor_L3G4200D.d \
./libraries/AP_InertialSensor/AP_InertialSensor_LSM9DS0.d \
./libraries/AP_InertialSensor/AP_InertialSensor_MPU6000.d \
./libraries/AP_InertialSensor/AP_InertialSensor_MPU9250.d \
./libraries/AP_InertialSensor/AP_InertialSensor_PX4.d \
./libraries/AP_InertialSensor/AP_InertialSensor_QURT.d \
./libraries/AP_InertialSensor/AP_InertialSensor_SITL.d \
./libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_MAVLink.d \
./libraries/AP_InertialSensor/AP_InertialSensor_UserInteract_Stream.d \
./libraries/AP_InertialSensor/AP_InertialSensor_qflight.d \
./libraries/AP_InertialSensor/AuxiliaryBus.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_InertialSensor/%.o: ../libraries/AP_InertialSensor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I"/home/lichen/eclipse-workspace/ardu/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


