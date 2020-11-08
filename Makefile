PACKAGE_VERSION = 1.0.5
TARGET = iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HighGraphics
HighGraphics_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk


