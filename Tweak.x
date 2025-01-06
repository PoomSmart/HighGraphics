#import <substrate.h>
#import <Foundation/Foundation.h>
#import <theos/IOSMacros.h>

%hook UIDevice

+ (BOOL)_isLowEnd {
    return NO;
}

- (NSInteger)_graphicsQuality {
    return 100;
}

- (NSInteger)_keyboardGraphicsQuality {
    return 100;
}

- (NSInteger)_predictionGraphicsQuality {
    return 100;
}

%end

%group SpringBoard

%hook UIDevice

- (NSInteger)_graphicsQualityIncludingMediumN41:(BOOL)n41 {
    return 100;
}

- (NSInteger)sbf_homeScreenFolderGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_homeScreenFolderBackgroundGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_searchTransitionGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_dashBoardPresentationGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_homeGrabberGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_featherBlurGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_animatedBlurRadiusGraphicsQuality {
    return 100;
}

- (NSInteger)sbf_homescreenBlurGraphicsQuality {
    return 100;
}

- (NSArray *)_lowQualityDevicesForFeatherBlur {
    return @[];
}

- (NSArray *)_lowQualityDevicesForHomeScreenBlur {
    return @[];
}

- (NSArray *)_mediumQualityProductsIncludingN41:(BOOL)n41 {
    return @[];
}

- (NSArray *)_mediumQualityDevicesForFeatherBlur {
    return @[];
}

- (NSArray *)_mediumQualityDevicesForAnimatedHomeScreenBlur {
    return @[];
}

- (NSArray *)_mediumQualityDevicesForHomeScreenBlur {
    return @[];
}

%end

%hook SBPlatformController

- (BOOL)isH4Device {
    return NO;
}

- (BOOL)isSingleCoreDevice {
    return NO;
}

%end

%end

%ctor
{
    %init;
    if (IN_SPRINGBOARD) {
        %init(SpringBoard);
    }
}