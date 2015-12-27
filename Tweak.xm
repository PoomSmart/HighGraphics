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

- (int)_graphicsQualityIncludingMediumN41:(BOOL)n41
{
	return 0x64;
}

%end