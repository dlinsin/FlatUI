//
//  PBFlatSettings.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatSettings.h"
#import "PBFlatSegmentedControl.h"

@implementation PBFlatSettings

+ (PBFlatSettings *)sharedInstance {
    static dispatch_once_t once;
    static PBFlatSettings *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[PBFlatSettings alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    if (self) {
        _mainColor = [UIColor blackColor];
        _backgroundColor = [UIColor whiteColor];
        _textFieldPlaceHolderColor = [UIColor colorWithRed:0.80f green:0.80f blue:0.80f alpha:1.00f];
        _secondColor = [UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.00f];
        _font = [UIFont fontWithName:@"HelveticaNeue" size:15];
        _iconImageColor = [UIColor whiteColor];
    }
    return self;
}

- (void)navigationBarApperance {

    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]] forBarMetrics:UIBarMetricsDefault];

    NSDictionary *_titleTextAttributes = @{UITextAttributeTextColor : [UIColor blackColor],
            UITextAttributeTextShadowColor : [UIColor clearColor],
            UITextAttributeFont : [_font fontWithSize:18.0f]};

    [[UINavigationBar appearance] setTitleTextAttributes:_titleTextAttributes];
    [[UINavigationBar appearance] setShadowImage:[UIImage imageWithColor:_textFieldPlaceHolderColor]];

    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationController class], nil] setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor] size:CGSizeMake(30, 30) andRoundSize:5.0]
                                            forState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationController class], nil] setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor] size:CGSizeMake(30, 30) andRoundSize:5.0]
                                                forState:UIControlStateSelected
                                              barMetrics:UIBarMetricsDefault];

    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationController class], nil] setTitleTextAttributes:
            [NSDictionary dictionaryWithObjectsAndKeys:
                    [UIColor blackColor], UITextAttributeTextColor,
                    [UIColor clearColor], UITextAttributeTextShadowColor,
                    [NSValue valueWithUIOffset:UIOffsetMake(0, 0)], UITextAttributeTextShadowOffset,
                    [UIFont fontWithName:@"HelveticaNeue-Light" size:18.0], UITextAttributeFont,
                    nil]
                                                forState:UIControlStateNormal];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationController class], nil] setTitleTextAttributes:
                [NSDictionary dictionaryWithObjectsAndKeys:
                        [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3], UITextAttributeTextColor,
                        [UIColor clearColor], UITextAttributeTextShadowColor,
                        [NSValue valueWithUIOffset:UIOffsetMake(0, 0)], UITextAttributeTextShadowOffset,
                        [UIFont fontWithName:@"HelveticaNeue-Light" size:18.0], UITextAttributeFont,
                        nil]
                                                    forState:UIControlStateSelected];
}
@end
