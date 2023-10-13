PACKAGE_VERSION = 1.1.0
TARGET = iphone:clang:latest:7.0
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64 arm64e
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HighGraphics
HighGraphics_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk


