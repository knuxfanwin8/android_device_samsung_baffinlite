#include <health2/service.h>
int main() { return health_service_main(); }
#include <healthd/healthd.h>
void healthd_board_init(struct healthd_config*) {}

int healthd_board_battery_update(struct android::BatteryProperties*) {
    // return 0 to log periodic polled battery status to kernel log
    return 0;
}
