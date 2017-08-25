################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_HAL/utility/tests/test_own_ptr.cpp 

OBJS += \
./libraries/AP_HAL/utility/tests/test_own_ptr.o 

CPP_DEPS += \
./libraries/AP_HAL/utility/tests/test_own_ptr.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_HAL/utility/tests/%.o: ../libraries/AP_HAL/utility/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=gnu++11 -I"/home/lichen/eclipse-workspace/ardu/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


