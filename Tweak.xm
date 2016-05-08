#import <substrate.h>

%hook UIDevice

- (int)_graphicsQuality
{
	return 0x64;
}

- (int)_keyboardGraphicsQuality
{
	return 0x64;
}

- (int)_predictionGraphicsQuality
{
	return 0x64;
}

%end

%group SpringBoard

%hook UIDevice

- (int)_graphicsQualityIncludingMediumN41:(BOOL)n41
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