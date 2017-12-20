//
//  StyleKitName.m
//  ProjectName
//
//  Created by AuthorName on 2017/12/20.
//  Copyright © 2017 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

#import "StyleKitName.h"


@implementation StyleKitName

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawClockWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds
{
    [StyleKitName drawClockWithFrame: CGRectMake(0, 0, 260, 260) resizing: StyleKitNameResizingBehaviorStretch numbersColor: numbersColor darkHandsColor: darkHandsColor lightHandColor: lightHandColor rimColor: rimColor tickColor: tickColor faceColor: faceColor hours: hours minutes: minutes seconds: seconds];
}

+ (void)drawClockWithFrame: (CGRect)targetFrame resizing: (StyleKitNameResizingBehavior)resizing numbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Resize to Target Frame
    CGContextSaveGState(context);
    CGRect resizedFrame = StyleKitNameResizingBehaviorApply(resizing, CGRectMake(0, 0, 260, 260), targetFrame);
    CGContextTranslateCTM(context, resizedFrame.origin.x, resizedFrame.origin.y);
    CGContextScaleCTM(context, resizedFrame.size.width / 260, resizedFrame.size.height / 260);



    //// Variable Declarations
    NSString* expression = hours > 12 ? @"PM" : @"AM";
    CGFloat secondsAngle = -seconds / 60.0 * 360;
    CGFloat minuteAngle = -(minutes / 60.0 * 360 - secondsAngle / 60.0);
    CGFloat hourAngle = -hours / 12.0 * 360 + minuteAngle / 12.0;

    //// Oval 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);

    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-116, -116, 232, 232)];
    [rimColor setFill];
    [oval2Path fill];

    CGContextRestoreGState(context);


    //// Oval Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);

    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-110, -110, 220, 220)];
    [faceColor setFill];
    [ovalPath fill];

    CGContextRestoreGState(context);


    //// Text Drawing
    UIBezierPath* textPath = [UIBezierPath bezierPath];
    [textPath moveToPoint: CGPointMake(123.72, 38.95)];
    [textPath addLineToPoint: CGPointMake(120.22, 41.82)];
    [textPath addLineToPoint: CGPointMake(118.47, 39.75)];
    [textPath addLineToPoint: CGPointMake(124, 35.3)];
    [textPath addLineToPoint: CGPointMake(126.72, 35.3)];
    [textPath addLineToPoint: CGPointMake(126.72, 53)];
    [textPath addLineToPoint: CGPointMake(123.72, 53)];
    [textPath addLineToPoint: CGPointMake(123.72, 38.95)];
    [textPath closePath];
    [textPath moveToPoint: CGPointMake(130.72, 50.25)];
    [textPath addLineToPoint: CGPointMake(137.55, 43.55)];
    [textPath addCurveToPoint: CGPointMake(138.86, 41.94) controlPoint1: CGPointMake(138.1, 43.02) controlPoint2: CGPointMake(138.54, 42.48)];
    [textPath addCurveToPoint: CGPointMake(139.35, 40.07) controlPoint1: CGPointMake(139.19, 41.4) controlPoint2: CGPointMake(139.35, 40.78)];
    [textPath addCurveToPoint: CGPointMake(138.54, 38.09) controlPoint1: CGPointMake(139.35, 39.24) controlPoint2: CGPointMake(139.08, 38.58)];
    [textPath addCurveToPoint: CGPointMake(136.53, 37.35) controlPoint1: CGPointMake(138, 37.6) controlPoint2: CGPointMake(137.33, 37.35)];
    [textPath addCurveToPoint: CGPointMake(134.47, 38.21) controlPoint1: CGPointMake(135.67, 37.35) controlPoint2: CGPointMake(134.99, 37.64)];
    [textPath addCurveToPoint: CGPointMake(133.53, 40.38) controlPoint1: CGPointMake(133.96, 38.79) controlPoint2: CGPointMake(133.64, 39.51)];
    [textPath addLineToPoint: CGPointMake(130.6, 39.93)];
    [textPath addCurveToPoint: CGPointMake(131.22, 37.9) controlPoint1: CGPointMake(130.68, 39.19) controlPoint2: CGPointMake(130.89, 38.52)];
    [textPath addCurveToPoint: CGPointMake(132.5, 36.3) controlPoint1: CGPointMake(131.56, 37.28) controlPoint2: CGPointMake(131.98, 36.75)];
    [textPath addCurveToPoint: CGPointMake(134.31, 35.24) controlPoint1: CGPointMake(133.02, 35.85) controlPoint2: CGPointMake(133.62, 35.5)];
    [textPath addCurveToPoint: CGPointMake(136.57, 34.85) controlPoint1: CGPointMake(135, 34.98) controlPoint2: CGPointMake(135.76, 34.85)];
    [textPath addCurveToPoint: CGPointMake(138.79, 35.18) controlPoint1: CGPointMake(137.34, 34.85) controlPoint2: CGPointMake(138.08, 34.96)];
    [textPath addCurveToPoint: CGPointMake(140.68, 36.16) controlPoint1: CGPointMake(139.5, 35.39) controlPoint2: CGPointMake(140.12, 35.72)];
    [textPath addCurveToPoint: CGPointMake(141.99, 37.79) controlPoint1: CGPointMake(141.23, 36.6) controlPoint2: CGPointMake(141.66, 37.15)];
    [textPath addCurveToPoint: CGPointMake(142.47, 40.03) controlPoint1: CGPointMake(142.31, 38.43) controlPoint2: CGPointMake(142.47, 39.17)];
    [textPath addCurveToPoint: CGPointMake(142.25, 41.61) controlPoint1: CGPointMake(142.47, 40.59) controlPoint2: CGPointMake(142.4, 41.12)];
    [textPath addCurveToPoint: CGPointMake(141.64, 43) controlPoint1: CGPointMake(142.1, 42.1) controlPoint2: CGPointMake(141.9, 42.57)];
    [textPath addCurveToPoint: CGPointMake(140.74, 44.24) controlPoint1: CGPointMake(141.38, 43.43) controlPoint2: CGPointMake(141.08, 43.85)];
    [textPath addCurveToPoint: CGPointMake(139.62, 45.38) controlPoint1: CGPointMake(140.4, 44.63) controlPoint2: CGPointMake(140.03, 45.01)];
    [textPath addLineToPoint: CGPointMake(134.53, 50.25)];
    [textPath addLineToPoint: CGPointMake(142.5, 50.25)];
    [textPath addLineToPoint: CGPointMake(142.5, 53)];
    [textPath addLineToPoint: CGPointMake(130.72, 53)];
    [textPath addLineToPoint: CGPointMake(130.72, 50.25)];
    [textPath closePath];
    [numbersColor setFill];
    [textPath fill];


    //// Bezier Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    CGContextRotateCTM(context, -(minuteAngle + 90) * M_PI/180);

    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(7.07, -7.07)];
    [bezierPath addCurveToPoint: CGPointMake(9.54, -3) controlPoint1: CGPointMake(8.25, -5.89) controlPoint2: CGPointMake(9.07, -4.49)];
    [bezierPath addLineToPoint: CGPointMake(95, -3)];
    [bezierPath addLineToPoint: CGPointMake(95, 3)];
    [bezierPath addLineToPoint: CGPointMake(9.54, 3)];
    [bezierPath addCurveToPoint: CGPointMake(7.07, 7.07) controlPoint1: CGPointMake(9.07, 4.49) controlPoint2: CGPointMake(8.25, 5.89)];
    [bezierPath addCurveToPoint: CGPointMake(-7.07, 7.07) controlPoint1: CGPointMake(3.17, 10.98) controlPoint2: CGPointMake(-3.17, 10.98)];
    [bezierPath addCurveToPoint: CGPointMake(-7.07, -7.07) controlPoint1: CGPointMake(-10.98, 3.17) controlPoint2: CGPointMake(-10.98, -3.17)];
    [bezierPath addCurveToPoint: CGPointMake(7.07, -7.07) controlPoint1: CGPointMake(-3.17, -10.98) controlPoint2: CGPointMake(3.17, -10.98)];
    [bezierPath closePath];
    [darkHandsColor setFill];
    [bezierPath fill];

    CGContextRestoreGState(context);


    //// Bezier 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    CGContextRotateCTM(context, -(hourAngle + 90) * M_PI/180);

    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(7.07, -7.07)];
    [bezier2Path addCurveToPoint: CGPointMake(8.66, -5) controlPoint1: CGPointMake(7.7, -6.44) controlPoint2: CGPointMake(8.24, -5.74)];
    [bezier2Path addLineToPoint: CGPointMake(56, -5)];
    [bezier2Path addLineToPoint: CGPointMake(56, 5)];
    [bezier2Path addLineToPoint: CGPointMake(8.66, 5)];
    [bezier2Path addCurveToPoint: CGPointMake(7.07, 7.07) controlPoint1: CGPointMake(8.24, 5.74) controlPoint2: CGPointMake(7.7, 6.44)];
    [bezier2Path addCurveToPoint: CGPointMake(-7.07, 7.07) controlPoint1: CGPointMake(3.17, 10.98) controlPoint2: CGPointMake(-3.17, 10.98)];
    [bezier2Path addCurveToPoint: CGPointMake(-7.07, -7.07) controlPoint1: CGPointMake(-10.98, 3.17) controlPoint2: CGPointMake(-10.98, -3.17)];
    [bezier2Path addCurveToPoint: CGPointMake(7.07, -7.07) controlPoint1: CGPointMake(-3.17, -10.98) controlPoint2: CGPointMake(3.17, -10.98)];
    [bezier2Path closePath];
    [darkHandsColor setFill];
    [bezier2Path fill];

    CGContextRestoreGState(context);


    //// Bezier 3 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    CGContextRotateCTM(context, -(secondsAngle + 90) * M_PI/180);

    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(4.24, -4.24)];
    [bezier3Path addCurveToPoint: CGPointMake(5.92, -1) controlPoint1: CGPointMake(5.16, -3.33) controlPoint2: CGPointMake(5.72, -2.19)];
    [bezier3Path addLineToPoint: CGPointMake(99, -1)];
    [bezier3Path addLineToPoint: CGPointMake(99, 1)];
    [bezier3Path addLineToPoint: CGPointMake(5.92, 1)];
    [bezier3Path addCurveToPoint: CGPointMake(4.24, 4.24) controlPoint1: CGPointMake(5.72, 2.19) controlPoint2: CGPointMake(5.16, 3.33)];
    [bezier3Path addCurveToPoint: CGPointMake(-4.24, 4.24) controlPoint1: CGPointMake(1.9, 6.59) controlPoint2: CGPointMake(-1.9, 6.59)];
    [bezier3Path addCurveToPoint: CGPointMake(-4.24, -4.24) controlPoint1: CGPointMake(-6.59, 1.9) controlPoint2: CGPointMake(-6.59, -1.9)];
    [bezier3Path addCurveToPoint: CGPointMake(4.24, -4.24) controlPoint1: CGPointMake(-1.9, -6.59) controlPoint2: CGPointMake(1.9, -6.59)];
    [bezier3Path closePath];
    [lightHandColor setFill];
    [bezier3Path fill];

    CGContextRestoreGState(context);


    //// Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(127, 20, 6, 8)];
        [tickColor setFill];
        [rectanglePath fill];


        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(127, 232, 6, 8)];
        [tickColor setFill];
        [rectangle2Path fill];
    }


    //// Group 2
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, 90 * M_PI/180);



        //// Rectangle 3 Drawing
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -110, 6, 8)];
        [tickColor setFill];
        [rectangle3Path fill];


        //// Rectangle 4 Drawing
        UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, 102, 6, 8)];
        [tickColor setFill];
        [rectangle4Path fill];



        CGContextRestoreGState(context);
    }


    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -30 * M_PI/180);



        //// Rectangle 5 Drawing
        UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -110, 6, 8)];
        [tickColor setFill];
        [rectangle5Path fill];


        //// Rectangle 6 Drawing
        UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, 102, 6, 8)];
        [tickColor setFill];
        [rectangle6Path fill];



        CGContextRestoreGState(context);
    }


    //// Group 4
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -60 * M_PI/180);



        //// Rectangle 7 Drawing
        UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -110, 6, 8)];
        [tickColor setFill];
        [rectangle7Path fill];


        //// Rectangle 8 Drawing
        UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, 102, 6, 8)];
        [tickColor setFill];
        [rectangle8Path fill];



        CGContextRestoreGState(context);
    }


    //// Group 5
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -120 * M_PI/180);



        //// Rectangle 9 Drawing
        UIBezierPath* rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -110, 6, 8)];
        [tickColor setFill];
        [rectangle9Path fill];


        //// Rectangle 10 Drawing
        UIBezierPath* rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, 102, 6, 8)];
        [tickColor setFill];
        [rectangle10Path fill];



        CGContextRestoreGState(context);
    }


    //// Group 6
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -150 * M_PI/180);



        //// Rectangle 11 Drawing
        UIBezierPath* rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -110, 6, 8)];
        [tickColor setFill];
        [rectangle11Path fill];


        //// Rectangle 12 Drawing
        UIBezierPath* rectangle12Path = [UIBezierPath bezierPathWithRect: CGRectMake(-3, 102, 6, 8)];
        [tickColor setFill];
        [rectangle12Path fill];



        CGContextRestoreGState(context);
    }


    //// Text 2 Drawing
    CGRect text2Rect = CGRectMake(111, 198, 38, 40);
    {
        NSString* textContent = @"6";
        NSMutableParagraphStyle* text2Style = [[NSMutableParagraphStyle alloc] init];
        text2Style.alignment = NSTextAlignmentCenter;
        NSDictionary* text2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-DemiBold" size: 25], NSForegroundColorAttributeName: numbersColor, NSParagraphStyleAttributeName: text2Style};

        CGFloat text2TextHeight = [textContent boundingRectWithSize: CGSizeMake(text2Rect.size.width, INFINITY) options: NSStringDrawingUsesLineFragmentOrigin attributes: text2FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text2Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text2Rect), CGRectGetMinY(text2Rect) + (text2Rect.size.height - text2TextHeight) / 2, text2Rect.size.width, text2TextHeight) withAttributes: text2FontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 3 Drawing
    CGRect text3Rect = CGRectMake(201, 110, 38, 40);
    {
        NSString* textContent = @"3";
        NSMutableParagraphStyle* text3Style = [[NSMutableParagraphStyle alloc] init];
        text3Style.alignment = NSTextAlignmentCenter;
        NSDictionary* text3FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-DemiBold" size: 25], NSForegroundColorAttributeName: numbersColor, NSParagraphStyleAttributeName: text3Style};

        CGFloat text3TextHeight = [textContent boundingRectWithSize: CGSizeMake(text3Rect.size.width, INFINITY) options: NSStringDrawingUsesLineFragmentOrigin attributes: text3FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text3Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text3Rect), CGRectGetMinY(text3Rect) + (text3Rect.size.height - text3TextHeight) / 2, text3Rect.size.width, text3TextHeight) withAttributes: text3FontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 4 Drawing
    CGRect text4Rect = CGRectMake(22, 110, 38, 40);
    {
        NSString* textContent = @"9";
        NSMutableParagraphStyle* text4Style = [[NSMutableParagraphStyle alloc] init];
        text4Style.alignment = NSTextAlignmentCenter;
        NSDictionary* text4FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-DemiBold" size: 25], NSForegroundColorAttributeName: numbersColor, NSParagraphStyleAttributeName: text4Style};

        CGFloat text4TextHeight = [textContent boundingRectWithSize: CGSizeMake(text4Rect.size.width, INFINITY) options: NSStringDrawingUsesLineFragmentOrigin attributes: text4FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text4Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text4Rect), CGRectGetMinY(text4Rect) + (text4Rect.size.height - text4TextHeight) / 2, text4Rect.size.width, text4TextHeight) withAttributes: text4FontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 13 Drawing
    CGRect text13Rect = CGRectMake(99, 144, 62, 34);
    NSMutableParagraphStyle* text13Style = [[NSMutableParagraphStyle alloc] init];
    text13Style.alignment = NSTextAlignmentCenter;
    NSDictionary* text13FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-DemiBold" size: 20], NSForegroundColorAttributeName: numbersColor, NSParagraphStyleAttributeName: text13Style};

    CGFloat text13TextHeight = [expression boundingRectWithSize: CGSizeMake(text13Rect.size.width, INFINITY) options: NSStringDrawingUsesLineFragmentOrigin attributes: text13FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, text13Rect);
    [expression drawInRect: CGRectMake(CGRectGetMinX(text13Rect), CGRectGetMinY(text13Rect) + (text13Rect.size.height - text13TextHeight) / 2, text13Rect.size.width, text13TextHeight) withAttributes: text13FontAttributes];
    CGContextRestoreGState(context);
    
    CGContextRestoreGState(context);

}

+ (void)drawClockPlaygroundWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 0 blue: 0 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 0.219 green: 0.373 blue: 0.457 alpha: 1];
    UIColor* color3 = [UIColor colorWithRed: 0.29 green: 0.29 blue: 0.29 alpha: 1];
    UIColor* color4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color5 = [UIColor colorWithRed: 0.086 green: 0.846 blue: 0.85 alpha: 1];

    //// Symbol Drawing
    CGRect symbolRect = CGRectMake(90, 30, 258, 258);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbolRect);
    CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y);

    [StyleKitName drawClockWithFrame: CGRectMake(0, 0, symbolRect.size.width, symbolRect.size.height) resizing: StyleKitNameResizingBehaviorStretch numbersColor: color5 darkHandsColor: color2 lightHandColor: color rimColor: color2 tickColor: tickColor faceColor: faceColor hours: 11 minutes: 45 seconds: 39];
    CGContextRestoreGState(context);


    //// Symbol 2 Drawing
    CGRect symbol2Rect = CGRectMake(358, 145, 253, 253);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol2Rect);
    CGContextTranslateCTM(context, symbol2Rect.origin.x, symbol2Rect.origin.y);

    [StyleKitName drawClockWithFrame: CGRectMake(0, 0, symbol2Rect.size.width, symbol2Rect.size.height) resizing: StyleKitNameResizingBehaviorStretch numbersColor: numbersColor darkHandsColor: darkHandsColor lightHandColor: lightHandColor rimColor: rimColor tickColor: tickColor faceColor: faceColor hours: 18 minutes: 43 seconds: 3];
    CGContextRestoreGState(context);


    //// Symbol 3 Drawing
    CGRect symbol3Rect = CGRectMake(611, 33, 260, 260);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol3Rect);
    CGContextTranslateCTM(context, symbol3Rect.origin.x, symbol3Rect.origin.y);

    [StyleKitName drawClockWithFrame: CGRectMake(0, 0, symbol3Rect.size.width, symbol3Rect.size.height) resizing: StyleKitNameResizingBehaviorStretch numbersColor: color4 darkHandsColor: color4 lightHandColor: color5 rimColor: color4 tickColor: color4 faceColor: color3 hours: 16 minutes: 6 seconds: 43];
    CGContextRestoreGState(context);
}

@end



CGRect StyleKitNameResizingBehaviorApply(StyleKitNameResizingBehavior behavior, CGRect rect, CGRect target)
{
    if (CGRectEqualToRect(rect, target) || CGRectEqualToRect(target, CGRectZero))
        return rect;

    CGSize scales = CGSizeZero;
    scales.width = ABS(target.size.width / rect.size.width);
    scales.height = ABS(target.size.height / rect.size.height);

    switch (behavior)
    {
        case StyleKitNameResizingBehaviorAspectFit:
        {
            scales.width = MIN(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case StyleKitNameResizingBehaviorAspectFill:
        {
            scales.width = MAX(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case StyleKitNameResizingBehaviorStretch:
            break;
        case StyleKitNameResizingBehaviorCenter:
        {
            scales.width = 1;
            scales.height = 1;
            break;
        }
    }

    CGRect result = CGRectStandardize(rect);
    result.size.width *= scales.width;
    result.size.height *= scales.height;
    result.origin.x = target.origin.x + (target.size.width - result.size.width) / 2;
    result.origin.y = target.origin.y + (target.size.height - result.size.height) / 2;
    return result;
}