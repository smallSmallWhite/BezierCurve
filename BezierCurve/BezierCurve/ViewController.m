//
//  ViewController.m
//  BezierCurve
//
//  Created by admin on 17/1/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain)UIBezierPath *bezierPath;
@end

@implementation ViewController
#pragma mark  直线
- (IBAction)line:(id)sender {
    
//    [_bezierPath stroke];
}
#pragma mark  二阶曲线
- (IBAction)curveOfOrder2:(id)sender {
    
//    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
//    [bezierPath removeAllPoints];
    
}
#pragma mark 三阶曲线
- (IBAction)curveOfOrder3:(id)sender {
}
#pragma mark  多阶曲线
- (IBAction)curveOfOrderMany:(id)sender {
}
#pragma mark  矩形
- (IBAction)rect:(id)sender {
}
#pragma mark  圆角矩形
- (IBAction)cordiousRect:(id)sender {
}
#pragma mark 部分圆角矩形
- (IBAction)partORadiousRect:(id)sender {
}
#pragma mark  圆
- (IBAction)circle:(id)sender {
}
#pragma mark  弧
- (IBAction)curve:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self drawRect2:CGRectMake(100, 100, 100, 100)];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];
    view.layer.delegate = self;
    [view.layer setNeedsDisplay];
    
    
    
    
}
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    
    UIGraphicsPushContext(ctx);  // 参数转化为当前上下文
    //画直线
//    [self drawRect];
    //画矩形
    [self drawRect1];
    UIGraphicsPopContext();
    
}
//画直线
- (void)drawRect {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 设置起点、终点坐标
    [bezierPath moveToPoint:CGPointMake(10, 10)];
    [bezierPath addLineToPoint:CGPointMake(100, 100)];
    // 开始绘制
    [bezierPath stroke];
}
//画矩形
- (void)drawRect1 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象，此对象用于绘制矩形，需要传入绘制的矩形的Frame
    _bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 50, 50)];
    // 设置线宽度
    _bezierPath.lineWidth = 10;
    // 设置线两头样式
    _bezierPath.lineCapStyle = kCGLineCapRound;
    // 开始绘制
    [_bezierPath stroke];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
