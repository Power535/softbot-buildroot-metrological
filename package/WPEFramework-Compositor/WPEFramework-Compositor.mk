WPEFRAMEWORK_COMPOSITOR_VERSION = 8c30df1b5c33e59a5cddf69cd744bd162f2a8e7c
WPEFRAMEWORK_COMPOSITOR_SITE_METHOD = git
WPEFRAMEWORK_COMPOSITOR_SITE = git@github.com:Metrological/webbridge.git
WPEFRAMEWORK_COMPOSITOR_INSTALL_STAGING = YES
WPEFRAMEWORK_COMPOSITOR_DEPENDENCIES = WPEFramework

WPEFRAMEWORK_CONF_OPTS += -DBUILDREF_WPEFRAMEWORK=$(shell $(GIT) rev-parse HEAD)

ifeq ($(BR2_PACKAGE_WPEFRAMEWORK_DEBUG),y)
WPEFRAMEWORK_COMPOSITOR_CONF_OPTS += -DCMAKE_BUILD_TYPE=Debug
endif

ifeq ($(BR2_PACKAGE_WESTEROS),y)
WPEFRAMEWORK_COMPOSITOR_DEPENDENCIES += westeros
WPEFRAMEWORK_COMPOSITOR_CONF_OPTS += -DWPEFRAMEWORK_PLUGIN_COMPOSITOR_IMPLEMENTATION=Westeros
else ifeq  ($(BR2_PACKAGE_BCM_REFSW),y)
WPEFRAMEWORK_COMPOSITOR_DEPENDENCIES += bcm-refsw
WPEFRAMEWORK_COMPOSITOR_CONF_OPTS += -DWPEFRAMEWORK_PLUGIN_COMPOSITOR_IMPLEMENTATION=Nexus
else
WPEFRAMEWORK_COMPOSITOR_CONF_OPTS += -DWPEFRAMEWORK_PLUGIN_COMPOSITOR_IMPLEMENTATION=Stub
endif

ifeq ($(BR2_PACKAGE_WPEFRAMEWORK_DEBUG),y)
WPEFRAMEWORK_CONF_OPTS += -DCMAKE_BUILD_TYPE=Debug
endif

$(eval $(cmake-package))