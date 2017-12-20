//
//  MyStyleKit.m
//  ProjectName
//
//  Created by AuthorName on 2017/12/20.
//  Copyright © 2017 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

#import "MyStyleKit.h"


@implementation MyStyleKit

#pragma mark Cache

static UIColor* _bubbleColor = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _bubbleColor = [UIColor colorWithRed: 1 green: 0.642 blue: 0.099 alpha: 1];

}

#pragma mark Colors

+ (UIColor*)bubbleColor { return _bubbleColor; }

#pragma mark Drawing Methods

+ (void)drawBubbleButtonWithFrame: (CGRect)frame title: (NSString*)title pressed: (BOOL)pressed
{
    //// Color Declarations
    CGFloat bubbleColorRGBA[4];
    [MyStyleKit.bubbleColor getRed: &bubbleColorRGBA[0] green: &bubbleColorRGBA[1] blue: &bubbleColorRGBA[2] alpha: &bubbleColorRGBA[3]];

    UIColor* bubbleFillColor = [UIColor colorWithRed: (bubbleColorRGBA[0] * 0.2 + 0.8) green: (bubbleColorRGBA[1] * 0.2 + 0.8) blue: (bubbleColorRGBA[2] * 0.2 + 0.8) alpha: (bubbleColorRGBA[3] * 0.2 + 0.8)];
    UIColor* color = [UIColor colorWithRed: 1 green: 0.639 blue: 0 alpha: 0.498];

    //// Variable Declarations
    UIColor* buttonColor = pressed ? color : bubbleFillColor;


    //// Subframes
    CGRect frame2 = CGRectMake(CGRectGetMinX(frame) + floor((frame.size.width - 43) * 0.50307 + 0.5), CGRectGetMinY(frame) + frame.size.height - 27, 43, 22);


    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMaxX(frame) - 12.2, CGRectGetMinY(frame) + 5.15)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 11.81, CGRectGetMinY(frame) + 5.25)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.25, CGRectGetMinY(frame) + 10.81) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 9.23, CGRectGetMinY(frame) + 6.19) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 7.19, CGRectGetMinY(frame) + 8.23)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 19.79) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 13.18) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 15.38)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 38.29)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.15, CGRectGetMaxY(frame) - 29.7) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 33.88) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 31.68)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.25, CGRectGetMaxY(frame) - 29.31)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 11.81, CGRectGetMaxY(frame) - 23.75) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 7.19, CGRectGetMaxY(frame) - 26.73) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 9.23, CGRectGetMaxY(frame) - 24.69)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 20.79, CGRectGetMaxY(frame) - 23) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 14.18, CGRectGetMaxY(frame) - 23) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 16.38, CGRectGetMaxY(frame) - 23)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 34.92, CGRectGetMaxY(frame2) - 18)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.74, CGRectGetMaxY(frame2) - 11.82) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 7.92, CGRectGetMaxY(frame2) - 18) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 14.1, CGRectGetMaxY(frame2) - 11.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 0.79, CGRectGetMaxY(frame2) - 18)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 13.2, CGRectGetMaxY(frame) - 23.65) controlPoint1: CGPointMake(CGRectGetMinX(frame2) - 3.62, CGRectGetMaxY(frame2) - 18) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 15.18, CGRectGetMaxY(frame) - 23)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 12.81, CGRectGetMaxY(frame) - 23.75)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 7.25, CGRectGetMaxY(frame) - 29.31) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 10.23, CGRectGetMaxY(frame) - 24.69) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 8.19, CGRectGetMaxY(frame) - 26.73)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 38.29) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 31.68) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 33.88)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 19.79)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 7.15, CGRectGetMinY(frame) + 11.2) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 15.38) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 13.18)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 7.25, CGRectGetMinY(frame) + 10.81)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 12.81, CGRectGetMinY(frame) + 5.25) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 8.19, CGRectGetMinY(frame) + 8.23) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 10.23, CGRectGetMinY(frame) + 6.19)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 21.79, CGRectGetMinY(frame) + 4.5) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 15.18, CGRectGetMinY(frame) + 4.5) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 17.38, CGRectGetMinY(frame) + 4.5)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 20.79, CGRectGetMinY(frame) + 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 12.2, CGRectGetMinY(frame) + 5.15) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 16.38, CGRectGetMinY(frame) + 4.5) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 14.18, CGRectGetMinY(frame) + 4.5)];
    [bezierPath closePath];
    [buttonColor setFill];
    [bezierPath fill];
    [MyStyleKit.bubbleColor setStroke];
    bezierPath.lineWidth = 3;
    [bezierPath stroke];


    //// Rectangle 4 Drawing
    CGRect rectangle4Rect = CGRectMake(CGRectGetMinX(frame) + 14, CGRectGetMinY(frame) + 19, frame.size.width - 27, frame.size.height - 46);
    NSMutableParagraphStyle* rectangle4Style = [[NSMutableParagraphStyle alloc] init];
    rectangle4Style.alignment = NSTextAlignmentCenter;
    NSDictionary* rectangle4FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-Medium" size: 26], NSForegroundColorAttributeName: MyStyleKit.bubbleColor, NSParagraphStyleAttributeName: rectangle4Style};

    [title drawInRect: rectangle4Rect withAttributes: rectangle4FontAttributes];
}

+ (void)drawChatIconWithIconColor: (UIColor*)iconColor scale: (CGFloat)scale
{
    [MyStyleKit drawChatIconWithFrame: CGRectMake(0, 0, 113, 114) resizing: MyStyleKitResizingBehaviorStretch iconColor: iconColor scale: scale];
}

+ (void)drawChatIconWithFrame: (CGRect)targetFrame resizing: (MyStyleKitResizingBehavior)resizing iconColor: (UIColor*)iconColor scale: (CGFloat)scale
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Resize to Target Frame
    CGContextSaveGState(context);
    CGRect resizedFrame = MyStyleKitResizingBehaviorApply(resizing, CGRectMake(0, 0, 113, 114), targetFrame);
    CGContextTranslateCTM(context, resizedFrame.origin.x, resizedFrame.origin.y);
    CGContextScaleCTM(context, resizedFrame.size.width / 113, resizedFrame.size.height / 114);


    //// Color Declarations
    CGFloat iconColorRGBA[4];
    [iconColor getRed: &iconColorRGBA[0] green: &iconColorRGBA[1] blue: &iconColorRGBA[2] alpha: &iconColorRGBA[3]];

    UIColor* iconFillColor = [UIColor colorWithRed: (iconColorRGBA[0] * 0.2 + 0.8) green: (iconColorRGBA[1] * 0.2 + 0.8) blue: (iconColorRGBA[2] * 0.2 + 0.8) alpha: (iconColorRGBA[3] * 0.2 + 0.8)];

    //// Background Oval Drawing
    UIBezierPath* backgroundOvalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(4, 5, 104, 104)];
    [iconFillColor setFill];
    [backgroundOvalPath fill];
    [iconColor setStroke];
    backgroundOvalPath.lineWidth = 3;
    [backgroundOvalPath stroke];


    //// Bezier Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 56, 56.91);
    CGContextScaleCTM(context, scale, scale);

    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(22.63, -19.92)];
    [bezierPath addCurveToPoint: CGPointMake(22.63, 13.81) controlPoint1: CGPointMake(35.12, -10.61) controlPoint2: CGPointMake(35.12, 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(-8.5, 19.95) controlPoint1: CGPointMake(14.2, 20.1) controlPoint2: CGPointMake(2.23, 22.14)];
    [bezierPath addCurveToPoint: CGPointMake(-18.23, 26.91) controlPoint1: CGPointMake(-11.93, 25.8) controlPoint2: CGPointMake(-18.23, 26.91)];
    [bezierPath addCurveToPoint: CGPointMake(-14.82, 18.09) controlPoint1: CGPointMake(-18.23, 26.91) controlPoint2: CGPointMake(-15.97, 23.44)];
    [bezierPath addCurveToPoint: CGPointMake(-22.63, 13.81) controlPoint1: CGPointMake(-17.63, 17) controlPoint2: CGPointMake(-20.27, 15.57)];
    [bezierPath addCurveToPoint: CGPointMake(-22.63, -19.92) controlPoint1: CGPointMake(-35.12, 4.5) controlPoint2: CGPointMake(-35.12, -10.61)];
    [bezierPath addCurveToPoint: CGPointMake(22.63, -19.92) controlPoint1: CGPointMake(-10.13, -29.24) controlPoint2: CGPointMake(10.13, -29.24)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(-1.05, -19.37)];
    [bezierPath addCurveToPoint: CGPointMake(-17.38, -14.56) controlPoint1: CGPointMake(-6.99, -19.2) controlPoint2: CGPointMake(-12.85, -17.6)];
    [bezierPath addCurveToPoint: CGPointMake(-24.58, -2.78) controlPoint1: CGPointMake(-22.24, -11.31) controlPoint2: CGPointMake(-24.64, -7.04)];
    [iconColor setStroke];
    bezierPath.lineWidth = 4.5;
    bezierPath.lineCapStyle = kCGLineCapRound;
    [bezierPath stroke];

    CGContextRestoreGState(context);
    
    CGContextRestoreGState(context);

}

+ (void)drawPaperPlaneIcon
{
    //// Color Declarations
    UIColor* color4 = [UIColor colorWithRed: 0.147 green: 0.558 blue: 1 alpha: 1];
    CGFloat color4RGBA[4];
    [color4 getRed: &color4RGBA[0] green: &color4RGBA[1] blue: &color4RGBA[2] alpha: &color4RGBA[3]];

    UIColor* iconColor4Fill = [UIColor colorWithRed: (color4RGBA[0] * 0.3 + 0.7) green: (color4RGBA[1] * 0.3 + 0.7) blue: (color4RGBA[2] * 0.3 + 0.7) alpha: (color4RGBA[3] * 0.3 + 0.7)];

    //// Background Oval Drawing
    UIBezierPath* backgroundOvalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(2, 3, 108, 108)];
    [iconColor4Fill setFill];
    [backgroundOvalPath fill];
    [color4 setStroke];
    backgroundOvalPath.lineWidth = 3;
    [backgroundOvalPath stroke];


    //// Plane Outline Drawing
    UIBezierPath* planeOutlinePath = [UIBezierPath bezierPath];
    [planeOutlinePath moveToPoint: CGPointMake(21.23, 65.94)];
    [planeOutlinePath addLineToPoint: CGPointMake(38.42, 73.21)];
    [planeOutlinePath addLineToPoint: CGPointMake(45.96, 86.86)];
    [planeOutlinePath addLineToPoint: CGPointMake(49.37, 77.84)];
    [planeOutlinePath addLineToPoint: CGPointMake(70.69, 86.86)];
    [planeOutlinePath addLineToPoint: CGPointMake(80.21, 27.88)];
    [planeOutlinePath addLineToPoint: CGPointMake(21.23, 65.94)];
    [planeOutlinePath closePath];
    [color4 setStroke];
    planeOutlinePath.lineWidth = 4.5;
    [planeOutlinePath stroke];


    //// Plane Lines Drawing
    UIBezierPath* planeLinesPath = [UIBezierPath bezierPath];
    [planeLinesPath moveToPoint: CGPointMake(37.61, 72.87)];
    [planeLinesPath addLineToPoint: CGPointMake(80.42, 26.26)];
    [planeLinesPath addLineToPoint: CGPointMake(82, 27.48)];
    [planeLinesPath addLineToPoint: CGPointMake(50.17, 76.05)];
    [planeLinesPath addLineToPoint: CGPointMake(49.63, 76.89)];
    [planeLinesPath addLineToPoint: CGPointMake(47.95, 75.79)];
    [planeLinesPath addLineToPoint: CGPointMake(48.5, 74.96)];
    [planeLinesPath addLineToPoint: CGPointMake(80.32, 26.38)];
    [planeLinesPath addLineToPoint: CGPointMake(81.9, 27.61)];
    [planeLinesPath addLineToPoint: CGPointMake(39.09, 74.22)];
    [planeLinesPath addLineToPoint: CGPointMake(38.41, 74.96)];
    [planeLinesPath addLineToPoint: CGPointMake(36.94, 73.61)];
    [planeLinesPath addLineToPoint: CGPointMake(37.61, 72.87)];
    [planeLinesPath closePath];
    [color4 setFill];
    [planeLinesPath fill];
}

+ (void)drawCanvas1WithIconColor: (UIColor*)iconColor
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color3 = [UIColor colorWithRed: 0.652 green: 0.8 blue: 0.32 alpha: 1];
    UIColor* color4 = [UIColor colorWithRed: 0.147 green: 0.558 blue: 1 alpha: 1];

    //// Symbol Drawing
    CGRect symbolRect = CGRectMake(21, 191, 141, 82);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbolRect);
    CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y);

    [MyStyleKit drawBubbleButtonWithFrame: CGRectMake(0, 0, symbolRect.size.width, symbolRect.size.height) title: @"Hello" pressed: NO];
    CGContextRestoreGState(context);


    //// Symbol 2 Drawing
    CGRect symbol2Rect = CGRectMake(21, 286, 347, 79);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol2Rect);
    CGContextTranslateCTM(context, symbol2Rect.origin.x, symbol2Rect.origin.y);

    [MyStyleKit drawBubbleButtonWithFrame: CGRectMake(0, 0, symbol2Rect.size.width, symbol2Rect.size.height) title: @"Title" pressed: YES];
    CGContextRestoreGState(context);


    //// Symbol 3 Drawing
    CGRect symbol3Rect = CGRectMake(35, 25, 113, 114);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol3Rect);
    CGContextTranslateCTM(context, symbol3Rect.origin.x, symbol3Rect.origin.y);

    [MyStyleKit drawChatIconWithFrame: CGRectMake(0, 0, symbol3Rect.size.width, symbol3Rect.size.height) resizing: MyStyleKitResizingBehaviorStretch iconColor: iconColor scale: 1];
    CGContextRestoreGState(context);


    //// Symbol 4 Drawing
    CGRect symbol4Rect = CGRectMake(162, 25, 86, 87);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol4Rect);
    CGContextTranslateCTM(context, symbol4Rect.origin.x, symbol4Rect.origin.y);

    [MyStyleKit drawChatIconWithFrame: CGRectMake(0, 0, symbol4Rect.size.width, symbol4Rect.size.height) resizing: MyStyleKitResizingBehaviorStretch iconColor: color3 scale: 1];
    CGContextRestoreGState(context);


    //// Symbol 5 Drawing
    CGRect symbol5Rect = CGRectMake(287, 25, 113, 114);
    CGContextSaveGState(context);
    CGContextClipToRect(context, symbol5Rect);
    CGContextTranslateCTM(context, symbol5Rect.origin.x, symbol5Rect.origin.y);

    [MyStyleKit drawChatIconWithFrame: CGRectMake(0, 0, symbol5Rect.size.width, symbol5Rect.size.height) resizing: MyStyleKitResizingBehaviorStretch iconColor: color4 scale: 1];
    CGContextRestoreGState(context);
}

@end



CGRect MyStyleKitResizingBehaviorApply(MyStyleKitResizingBehavior behavior, CGRect rect, CGRect target)
{
    if (CGRectEqualToRect(rect, target) || CGRectEqualToRect(target, CGRectZero))
        return rect;

    CGSize scales = CGSizeZero;
    scales.width = ABS(target.size.width / rect.size.width);
    scales.height = ABS(target.size.height / rect.size.height);

    switch (behavior)
    {
        case MyStyleKitResizingBehaviorAspectFit:
        {
            scales.width = MIN(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case MyStyleKitResizingBehaviorAspectFill:
        {
            scales.width = MAX(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case MyStyleKitResizingBehaviorStretch:
            break;
        case MyStyleKitResizingBehaviorCenter:
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
