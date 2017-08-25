#include <AP_HAL/AP_HAL.h>
#if CONFIG_HAL_BOARD == HAL_BOARD_LINUX

#include <assert.h>

#include "HAL_Linux_Class.h"
#include "AP_HAL_Linux_Private.h"

#include <AP_HAL/utility/getopt_cpp.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <AP_HAL_Empty/AP_HAL_Empty.h>
#include <AP_HAL_Empty/AP_HAL_Empty_Private.h>

using namespace Linux;

static Util utilInstance;
// 3 serial ports on Linux for now
static UARTDriver uartADriver(true);
static UARTDriver uartBDriver(false);
static UARTDriver uartCDriver(false);
static UARTDriver uartDDriver(false);
static UARTDriver uartEDriver(false);

#if 0
static I2CDeviceManager i2c_mgr_instance;
static I2CDriver  i2cDriver0(1);
static SPIDeviceManager spiDeviceManager;
static AnalogIn analogIn;
static RCInput rcinDriver;
#else
static Empty::I2CDeviceManager i2c_mgr_instance;
//static Empty::I2CDriver  i2cDriver0(1);
static Empty::SPIDeviceManager spiDeviceManager;
static Empty::AnalogIn analogIn;
static Empty::RCInput rcinDriver;
#endif

#if 0
static RCOutput_Sysfs rcoutDriver(0, 14);
#else
static Empty::RCOutput rcoutDriver;
#endif


/*
  select between FRAM and FS
 */
static Storage storageDriver;

#if 0
static GPIO_Sysfs gpioDriver;
#else
static Empty::GPIO gpioDriver;
#endif


static Scheduler schedulerInstance;

static Empty::OpticalFlow opticalFlow;

#if 0
HAL_Linux::HAL_Linux() :
    AP_HAL::HAL(
        &uartADriver,
        &uartBDriver,
        &uartCDriver,
        &uartDDriver,
        &uartEDriver,
        &i2c_mgr_instance,
        &i2cDriver0,
        NULL,
        NULL,
        &spiDeviceManager,
        &analogIn,
        &storageDriver,
        &uartADriver,
        &gpioDriver,
        &rcinDriver,
        &rcoutDriver,
        &schedulerInstance,
        &utilInstance,
        &opticalFlow)
{}

#else
HAL_Linux::HAL_Linux() :
    AP_HAL::HAL(
        &uartADriver,
        NULL,
        NULL,
        NULL,
        NULL,
        &i2c_mgr_instance,
        NULL,
        NULL,
        NULL,
        &spiDeviceManager,
        &analogIn,
        &storageDriver,
        &uartADriver,
        &gpioDriver,
        &rcinDriver,
        &rcoutDriver,
        &schedulerInstance,
        &utilInstance,
        &opticalFlow)
{}


#endif


void _usage(void)
{
    printf("Usage: -A uartAPath -B uartBPath -C uartCPath -D uartDPath -E uartEPath\n");
    printf("Options:\n");
    printf("\t-serial:          -A /dev/ttyO4\n");
    printf("\t                  -B /dev/ttyS1\n");    
    printf("\t-tcp:             -C tcp:192.168.2.15:1243:wait\n");
    printf("\t                  -A tcp:11.0.0.2:5678\n");    
    printf("\t                  -A udp:11.0.0.2:5678\n");    
    printf("\t-custom log path:\n");        
    printf("\t                  --log-directory /var/APM/logs\n");
    printf("\t                  -l /var/APM/logs\n");
    printf("\t-custom terrain path:\n");
    printf("\t                   --terrain-directory /var/APM/terrain\n");
    printf("\t                   -t /var/APM/terrain\n");
}

void HAL_Linux::run(int argc, char* const argv[], Callbacks* callbacks) const
{
    assert(callbacks);

    int opt;
    const struct GetOptLong::option options[] = {
        {"uartA",         true,  0, 'A'},
        {"uartB",         true,  0, 'B'},
        {"uartC",         true,  0, 'C'},
        {"uartD",         true,  0, 'D'},
        {"uartE",         true,  0, 'E'},
        {"log-directory",       true,  0, 'l'},
        {"terrain-directory",   true,  0, 't'},
        {"help",                false,  0, 'h'},
        {0, false, 0, 0}
    };

    GetOptLong gopt(argc, argv, "A:B:C:D:E:l:t:he:S",
                    options);

    /*
      parse command line options
     */
    while ((opt = gopt.getoption()) != -1) {
        switch (opt) {
        case 'A':
            uartADriver.set_device_path(gopt.optarg);
            break;
        case 'B':
            uartBDriver.set_device_path(gopt.optarg);
            break;
        case 'C':
            uartCDriver.set_device_path(gopt.optarg);
            break;
        case 'D':
            uartDDriver.set_device_path(gopt.optarg);
            break;
        case 'E':
            uartEDriver.set_device_path(gopt.optarg);
            break;
#if CONFIG_HAL_BOARD_SUBTYPE == HAL_BOARD_SUBTYPE_LINUX_QFLIGHT
        case 'e':
            rcoutDriver.set_device_path(gopt.optarg);
            break;
        case 'S':
            rcinDriver.set_device_path(gopt.optarg);
            break;
#endif // CONFIG_HAL_BOARD_SUBTYPE
        case 'l':            
            utilInstance.set_custom_log_directory(gopt.optarg);
            break;
        case 't':
            utilInstance.set_custom_terrain_directory(gopt.optarg);
            break;
        case 'h':
            _usage();
            exit(0);
        default:
            printf("Unknown option '%c'\n", (char)opt);
            exit(1);
        }
    }

    scheduler->init();

#if 0
    gpio->init();
    i2c->begin();
    spi->init();
    rcout->init();
    rcin->init();
    uartE->begin(115200);    
    analogin->init();
#endif
    uartA->begin(115200);
    utilInstance.init(argc+gopt.optind-1, &argv[gopt.optind-1]);

    // NOTE: See commit 9f5b4ffca ("AP_HAL_Linux_Class: Correct
    // deadlock, and infinite loop in setup()") for details about the
    // order of scheduler initialize and setup on Linux.
    scheduler->system_initialized();
    callbacks->setup();

    for (;;) {
        callbacks->loop();
    }
}

const AP_HAL::HAL& AP_HAL::get_HAL() {
    static const HAL_Linux hal;
    return hal;
}

#endif
