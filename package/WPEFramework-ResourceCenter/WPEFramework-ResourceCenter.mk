WPEFRAMEWORK_RESOURCECENTER_VERSION = a3847a67ebafef37375839dca9298baf90c82844
WPEFRAMEWORK_RESOURCECENTER_SITE_METHOD = git
WPEFRAMEWORK_RESOURCECENTER_SITE = git@github.com:Metrological/webbridge.git
WPEFRAMEWORK_RESOURCECENTER_INSTALL_STAGING = YES
WPEFRAMEWORK_RESOURCECENTER_DEPENDENCIES = WPEFramework

$(eval $(cmake-package))
