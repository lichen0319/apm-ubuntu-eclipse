################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/AP_ADC/AP_ADC.cpp \
../libraries/AP_ADC/AP_ADC_ADS1115.cpp \
../libraries/AP_ADC/AP_ADC_ADS7844.cpp 

OBJS += \
./libraries/AP_ADC/AP_ADC.o \
./libraries/AP_ADC/AP_ADC_ADS1115.o \
./libraries/AP_ADC/AP_ADC_ADS7844.o 

CPP_DEPS += \
./libraries/AP_ADC/AP_ADC.d \
./libraries/AP_ADC/AP_ADC_ADS1115.d \
./libraries/AP_ADC/AP_ADC_ADS7844.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/AP_ADC/%.o: ../libraries/AP_ADC/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=gnu++11 -I"/home/lichen/eclipse-workspace/ardu-x86/libraries" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


