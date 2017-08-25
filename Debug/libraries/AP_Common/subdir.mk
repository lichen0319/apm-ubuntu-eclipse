################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_Common/AP_Common.cpp \
../libraries/AP_Common/c++.cpp 

OBJS += \
./libraries/AP_Common/AP_Common.o \
./libraries/AP_Common/c++.o 

CPP_DEPS += \
./libraries/AP_Common/AP_Common.d \
./libraries/AP_Common/c++.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_Common/%.o: ../libraries/AP_Common/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=gnu++11 -I"/home/lichen/eclipse-workspace/ardu-x86/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


