//
//  ViewController.m
//  testttttt
//
//  Created by desunire on 2017/12/20.
//  Copyright © 2017年 desunire. All rights reserved.
//

#import "ViewController.h"
#import "StyleKitName.h"
#import "MyStyleKit.h"
#import "TestView.h"
#import "ClockView.h"


@interface ViewController ()
@property (nonatomic , strong)dispatch_source_t timer;

@property(nonatomic,strong)UILabel *Timelabel;

@property(nonatomic,copy)NSString *time;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //// General Declarations
   
    
//    TestView *view= [TestView new];
//    view.backgroundColor = [UIColor whiteColor];
//    view.frame = CGRectMake(100, 100, 200, 200);
//    [self.view addSubview:view];
    
    
    
    
    ClockView *cView = [ClockView new];
    cView.backgroundColor = [UIColor whiteColor];
    
    //获取系统当前时间的毫秒数
    NSDate *now = [NSDate date];
    NSLog(@"now date is: %@", now);
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond |NSCalendarUnitNanosecond;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:now];
    NSLog(@"%ld/%ld/%ld %ld:%ld:%ld.%ld",(long)dateComponent.year, (long)dateComponent.month, (long)dateComponent.day, (long)dateComponent.hour, (long)dateComponent.minute, (long)dateComponent.second, (long)dateComponent.nanosecond);
    
    cView.hour =(long)dateComponent.hour;
    cView.minutes = (long)dateComponent.minute;
    cView.second =(long)dateComponent.second;
    __block NSInteger second = (long)dateComponent.second;
    __block NSInteger minutes = (long)dateComponent.minute;
    __block NSInteger hour = (long)dateComponent.hour;
    cView.frame = self.view.frame;
    [self.view addSubview:cView];

    /**
     ①、- (void)drawRect:(CGRect)rect;
     重写此方法，执行重绘任务
     ②、- (void)setNeedsDisplay;
     标记为需要重绘，异步调用drawRect
     ③、- (void)setNeedsDisplayInRect:(CGRect)rect;
     标记为需要局部重绘
     
     layoutSubviews对subviews重新布局；
     layoutSubviews方法调用先于drawRect；
     setNeedsLayout在receiver标上一个需要被重新布局的标记，在系统runloop的下一个周期自动调用layoutSubviews；
     layoutIfNeeded方法如其名，UIKit会判断该receiver是否需要layout.根据Apple官方文档,layoutIfNeeded方法应该是这样的
     layoutIfNeeded遍历的不是superview链，应该是subviews链
     drawRect是对receiver的重绘，能获得context；
     setNeedDisplay在receiver标上一个需要被重新绘图的标记，在下一个draw周期自动重绘，iphone device的刷新频率是60hz，也就是1/60秒后重绘。
     
     */
//    NSTimeInterval period = 1.0; //设置时间间隔
//
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), period * NSEC_PER_SEC, 0); //每秒执行
//    dispatch_source_set_event_handler(_timer, ^{
//        //在这里执行事件
//        second ++;
//        if (second >=60) {
//            second = 0;
//        }
//        NSLog(@"%ld",second);
//        [cView setNeedsDisplay];
//    });
//    dispatch_resume(_timer);
    
    NSTimeInterval period = 1.0;//设置时间间隔
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);  //必须声明成属性变量！！！！
    
    
    dispatch_source_set_timer(_timer, DISPATCH_TIME_NOW, period * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
    
    dispatch_source_set_event_handler(_timer, ^{
        
        NSLog(@"%@" , [NSThread currentThread]);//打印当前线程
        
        dispatch_async(dispatch_get_main_queue(), ^{
            //回到主线程做事情
            //在这里执行事件
            second++;
            if (second >=60) {
                second = 0;
                minutes++;
                if(minutes >= 60){
                    minutes = 0;
                    hour++;
                    if (hour >= 24) {
                        hour = 0;
                    }
                }
            }
//            NSLog(@"当前时间:%ld",second);
            self.time = [NSString stringWithFormat:@"当前时间是:%ld:%ld:%ld",hour,minutes,second];
            self.Timelabel.text = self.time;
            cView.second = second;
            cView.minutes= minutes;
            cView.hour= hour;
            [cView setNeedsDisplay];
        });
        
    });
    
    dispatch_resume(_timer);
    
//    注意：要将timer存储起来，不然会就只执行一次
//
//    如果不定时器使用完了的话 ，取消定时器：dispatch_source_cancel(_timer);
    
    
    self.Timelabel = [[UILabel alloc] init];
    self.time = [NSString stringWithFormat:@"当前时间是:%ld:%ld:%ld",hour,minutes,second];
    self.Timelabel.text = self.time;
    self.Timelabel.textAlignment = NSTextAlignmentCenter;
    self.Timelabel.frame = CGRectMake(50, self.view.frame.size.height-200, (self.view.frame.size.width-100), 30);
    [self.view addSubview:self.Timelabel];

    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
