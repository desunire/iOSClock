//
//  ClockView.m
//  testttttt
//
//  Created by desunire on 2017/12/20.
//  Copyright © 2017年 desunire. All rights reserved.
//

#import "ClockView.h"
#import "StyleKitName.h"
@implementation ClockView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
        CGContextRef context = UIGraphicsGetCurrentContext();
    
        //// Color Declarations
        UIColor* color3 = [UIColor colorWithRed: 0.29 green: 0.29 blue: 0.29 alpha: 1];
        UIColor* color4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
        UIColor* color5 = [UIColor colorWithRed: 0.086 green: 0.846 blue: 0.85 alpha: 1];
    
        //// Symbol 3 Drawing
        CGRect symbol3Rect = CGRectMake(0, 0, 260, 260);
        CGContextSaveGState(context);
        CGContextClipToRect(context, symbol3Rect);
        CGContextTranslateCTM(context, symbol3Rect.origin.x, symbol3Rect.origin.y);

    
        [StyleKitName drawClockWithFrame: CGRectMake(20, 20, symbol3Rect.size.width, symbol3Rect.size.height) resizing: StyleKitNameResizingBehaviorStretch numbersColor: color4 darkHandsColor: color4 lightHandColor: color5 rimColor: color4 tickColor: color4 faceColor: color3 hours: self.hour minutes: self.minutes seconds: self.second];
        CGContextRestoreGState(context);
}





@end
