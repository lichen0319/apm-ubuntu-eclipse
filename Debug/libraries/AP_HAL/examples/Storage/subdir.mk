################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_HAL/examples/Storage/Storage.cpp 

OBJS += \
./libraries/AP_HAL/examples/Storage/Storage.o 

CPP_DEPS += \
./libraries/AP_HAL/examples/Storage/Storage.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_HAL/examples/Storage/%.o: ../libraries/AP_HAL/examples/Storage/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=gnu++11 -I"/home/lichen/eclipse-workspace/ardu-x86/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


