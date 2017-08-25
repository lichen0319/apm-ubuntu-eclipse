################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_HAL_Linux/AnalogIn.cpp \
../libraries/AP_HAL_Linux/CameraSensor.cpp \
../libraries/AP_HAL_Linux/ConsoleDevice.cpp \
../libraries/AP_HAL_Linux/GPIO.cpp \
../libraries/AP_HAL_Linux/HAL_Linux_Class.cpp \
../libraries/AP_HAL_Linux/I2CDevice.cpp \
../libraries/AP_HAL_Linux/I2CDriver.cpp \
../libraries/AP_HAL_Linux/PWM_Sysfs.cpp \
../libraries/AP_HAL_Linux/Perf.cpp \
../libraries/AP_HAL_Linux/Perf_Lttng.cpp \
../libraries/AP_HAL_Linux/RCInput.cpp \
../libraries/AP_HAL_Linux/RCInput_UART.cpp \
../libraries/AP_HAL_Linux/RCInput_UDP.cpp \
../libraries/AP_HAL_Linux/RCOutput_Sysfs.cpp \
../libraries/AP_HAL_Linux/SPIDevice.cpp \
../libraries/AP_HAL_Linux/SPIDriver.cpp \
../libraries/AP_HAL_Linux/Scheduler.cpp \
../libraries/AP_HAL_Linux/Semaphores.cpp \
../libraries/AP_HAL_Linux/Storage.cpp \
../libraries/AP_HAL_Linux/TCPServerDevice.cpp \
../libraries/AP_HAL_Linux/Thread.cpp \
../libraries/AP_HAL_Linux/ToneAlarm.cpp \
../libraries/AP_HAL_Linux/UARTDevice.cpp \
../libraries/AP_HAL_Linux/UARTDriver.cpp \
../libraries/AP_HAL_Linux/UDPDevice.cpp \
../libraries/AP_HAL_Linux/Util.cpp \
../libraries/AP_HAL_Linux/VideoIn.cpp \
../libraries/AP_HAL_Linux/sbus.cpp \
../libraries/AP_HAL_Linux/system.cpp 

OBJS += \
./libraries/AP_HAL_Linux/AnalogIn.o \
./libraries/AP_HAL_Linux/CameraSensor.o \
./libraries/AP_HAL_Linux/ConsoleDevice.o \
./libraries/AP_HAL_Linux/GPIO.o \
./libraries/AP_HAL_Linux/HAL_Linux_Class.o \
./libraries/AP_HAL_Linux/I2CDevice.o \
./libraries/AP_HAL_Linux/I2CDriver.o \
./libraries/AP_HAL_Linux/PWM_Sysfs.o \
./libraries/AP_HAL_Linux/Perf.o \
./libraries/AP_HAL_Linux/Perf_Lttng.o \
./libraries/AP_HAL_Linux/RCInput.o \
./libraries/AP_HAL_Linux/RCInput_UART.o \
./libraries/AP_HAL_Linux/RCInput_UDP.o \
./libraries/AP_HAL_Linux/RCOutput_Sysfs.o \
./libraries/AP_HAL_Linux/SPIDevice.o \
./libraries/AP_HAL_Linux/SPIDriver.o \
./libraries/AP_HAL_Linux/Scheduler.o \
./libraries/AP_HAL_Linux/Semaphores.o \
./libraries/AP_HAL_Linux/Storage.o \
./libraries/AP_HAL_Linux/TCPServerDevice.o \
./libraries/AP_HAL_Linux/Thread.o \
./libraries/AP_HAL_Linux/ToneAlarm.o \
./libraries/AP_HAL_Linux/UARTDevice.o \
./libraries/AP_HAL_Linux/UARTDriver.o \
./libraries/AP_HAL_Linux/UDPDevice.o \
./libraries/AP_HAL_Linux/Util.o \
./libraries/AP_HAL_Linux/VideoIn.o \
./libraries/AP_HAL_Linux/sbus.o \
./libraries/AP_HAL_Linux/system.o 

CPP_DEPS += \
./libraries/AP_HAL_Linux/AnalogIn.d \
./libraries/AP_HAL_Linux/CameraSensor.d \
./libraries/AP_HAL_Linux/ConsoleDevice.d \
./libraries/AP_HAL_Linux/GPIO.d \
./libraries/AP_HAL_Linux/HAL_Linux_Class.d \
./libraries/AP_HAL_Linux/I2CDevice.d \
./libraries/AP_HAL_Linux/I2CDriver.d \
./libraries/AP_HAL_Linux/PWM_Sysfs.d \
./libraries/AP_HAL_Linux/Perf.d \
./libraries/AP_HAL_Linux/Perf_Lttng.d \
./libraries/AP_HAL_Linux/RCInput.d \
./libraries/AP_HAL_Linux/RCInput_UART.d \
./libraries/AP_HAL_Linux/RCInput_UDP.d \
./libraries/AP_HAL_Linux/RCOutput_Sysfs.d \
./libraries/AP_HAL_Linux/SPIDevice.d \
./libraries/AP_HAL_Linux/SPIDriver.d \
./libraries/AP_HAL_Linux/Scheduler.d \
./libraries/AP_HAL_Linux/Semaphores.d \
./libraries/AP_HAL_Linux/Storage.d \
./libraries/AP_HAL_Linux/TCPServerDevice.d \
./libraries/AP_HAL_Linux/Thread.d \
./libraries/AP_HAL_Linux/ToneAlarm.d \
./libraries/AP_HAL_Linux/UARTDevice.d \
./libraries/AP_HAL_Linux/UARTDriver.d \
./libraries/AP_HAL_Linux/UDPDevice.d \
./libraries/AP_HAL_Linux/Util.d \
./libraries/AP_HAL_Linux/VideoIn.d \
./libraries/AP_HAL_Linux/sbus.d \
./libraries/AP_HAL_Linux/system.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_HAL_Linux/%.o: ../libraries/AP_HAL_Linux/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=gnu++11 -I"/home/lichen/eclipse-workspace/ardu-x86/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


