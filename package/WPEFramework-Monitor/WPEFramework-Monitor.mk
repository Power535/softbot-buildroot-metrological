WPEFRAMEWORK_MONITOR_VERSION = b8f8690dafd5fa90b56018a4ba95e230cdebd110
WPEFRAMEWORK_MONITOR_SITE_METHOD = git
WPEFRAMEWORK_MONITOR_SITE = git@github.com:Metrological/webbridge.git
WPEFRAMEWORK_MONITOR_INSTALL_STAGING = YES
WPEFRAMEWORK_MONITOR_DEPENDENCIES = WPEFramework

WPEFRAMEWORK_CONF_OPTS += -DBUILDREF_WPEFRAMEWORK=$(shell $(GIT) rev-parse HEAD)

$(eval $(cmake-package))

