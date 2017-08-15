#import <substrate.h>

%hook UIDevice

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

- (NSInteger)sbf_searchTransitionGraphicsQuality {
	return 100;
}

- (NSInteger)sbf_dashBoardPresentationGraphicsQuality {
	return 100;
}

- (NSArray *)_mediumQualityProductsIncludingN41:(BOOL)n41 {
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