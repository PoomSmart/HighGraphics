#import <substrate.h>

%hook UIDevice

- (NSInteger)_graphicsQuality
{
	return 0x64;
}

- (NSInteger)_keyboardGraphicsQuality
{
	return 0x64;
}

- (NSInteger)_predictionGraphicsQuality
{
	return 0x64;
}

%end

%group SpringBoard

%hook UIDevice

- (NSInteger)_graphicsQualityIncludingMediumN41:(BOOL)n41
{
	return 0x64;
}

- (NSArray *)_mediumQualityProductsIncludingN41:(BOOL)n41
{
	return @[];
}

%end

%hook SBPlatformController

- (BOOL)isH4Device
{
	return NO;
}

- (BOOL)isSingleCoreDevice
{
	return NO;
}

%end

%end

%ctor
{
	%init;
	if ([NSBundle.mainBundle.bundleIdentifier isEqualToString:@"com.apple.springboard"]) {
		%init(SpringBoard);
	}
}