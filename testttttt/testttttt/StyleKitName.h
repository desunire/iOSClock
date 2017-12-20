//
//  StyleKitName.h
//  ProjectName
//
//  Created by AuthorName on 2017/12/20.
//  Copyright © 2017 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

#import <UIKit/UIKit.h>



typedef enum : NSInteger
{
    StyleKitNameResizingBehaviorAspectFit, //!< The content is proportionally resized to fit into the target rectangle.
    StyleKitNameResizingBehaviorAspectFill, //!< The content is proportionally resized to completely fill the target rectangle.
    StyleKitNameResizingBehaviorStretch, //!< The content is stretched to match the entire target rectangle.
    StyleKitNameResizingBehaviorCenter, //!< The content is centered in the target rectangle, but it is NOT resized.

} StyleKitNameResizingBehavior;

extern CGRect StyleKitNameResizingBehaviorApply(StyleKitNameResizingBehavior behavior, CGRect rect, CGRect target);


@interface StyleKitName : NSObject

// Drawing Methods
+ (void)drawClockWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds;
+ (void)drawClockWithFrame: (CGRect)targetFrame resizing: (StyleKitNameResizingBehavior)resizing numbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds;
+ (void)drawClockPlaygroundWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor;

@end
