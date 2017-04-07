WPEFRAMEWORK_WEBKITBROWSER_VERSION = fbbb17f8b8c99a3a6b62c56587ce9864b99abff2
WPEFRAMEWORK_WEBKITBROWSER_SITE_METHOD = git
WPEFRAMEWORK_WEBKITBROWSER_SITE = git@github.com:Metrological/webbridge.git
WPEFRAMEWORK_WEBKITBROWSER_INSTALL_STAGING = YES
WPEFRAMEWORK_WEBKITBROWSER_DEPENDENCIES = WPEFramework wpewebkit

WPEFRAMEWORK_CONF_OPTS += -DBUILDREF_WPEFRAMEWORK=$(shell $(GIT) rev-parse HEAD)

$(eval $(cmake-package))

