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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self drawRect2:CGRectMake(100, 100, 100, 100)];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 400, 400)];
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
//    [self drawRect1];
    //圆角矩形
//    [self drawRect2];
    //部分圆角矩形
//    [self drawRect3];
    //画圆
//    [self drawRect4];
    //画圆弧
//    [self drawRect5];
    //画二阶曲线
//    [self drawRect6];
    //画三阶曲线
//    [self drawRect7];
    //画多阶曲线
    [self drawRect8];
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
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 50, 50)];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 开始绘制
    [bezierPath stroke];
}
//圆角矩形
- (void)drawRect2 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象，此对象用于绘制一个圆角矩形
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50)cornerRadius:10];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 开始绘制
    [bezierPath stroke];
}
//部分圆角矩形
- (void)drawRect3 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象，此对象用于绘制一个部分圆角的矩形，左上、右下
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 开始绘制
    [bezierPath stroke];
}
//画圆
- (void)drawRect4 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象，此对象用于绘制内切圆，需要传入绘制内切圆的矩形的Frame
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 50, 50)];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 开始绘制
    [bezierPath stroke];
}
//圆弧
-(void)drawRect5 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象，此对象用于绘制一个圆弧
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150)radius:110 startAngle:0 endAngle:M_PI_2 clockwise:NO];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 开始绘制
    [bezierPath stroke];
}
//二阶曲线
- (void)drawRect6 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 设置起点、终点坐标
    [bezierPath moveToPoint:CGPointMake(100, 100)];
    [bezierPath addQuadCurveToPoint:CGPointMake(200, 200) controlPoint:CGPointMake(300, 0)];
    // 开始绘制
    [bezierPath stroke];
}
//三阶曲线
- (void)drawRect7{
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 设置起点、终点坐标
    [bezierPath moveToPoint:CGPointMake(100, 100)];
    [bezierPath addCurveToPoint:CGPointMake(200, 200) controlPoint1:CGPointMake(150, 0) controlPoint2:CGPointMake(150, 300)];
    // 开始绘制
    [bezierPath stroke];
}
//多阶曲线
- (void)drawRect8 {
    
    // 设置线的填充色
    [[UIColor redColor] setStroke];
    // 新建一个bezier对象
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    // 设置线宽度
    bezierPath.lineWidth = 10;
    // 设置线两头样式
    bezierPath.lineCapStyle = kCGLineCapRound;
    // 设置起点、终点坐标
    [bezierPath moveToPoint:CGPointMake(100, 100)];
    [bezierPath addCurveToPoint:CGPointMake(200, 200)
                  controlPoint1:CGPointMake(150, 0)
                  controlPoint2:CGPointMake(150, 300)];
    // 创建第二条贝塞尔曲线
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPath];
    // 设置起点、终点坐标
    [bezierPath2 moveToPoint:CGPointMake(200, 200)];
    [bezierPath2 addCurveToPoint:CGPointMake(290, 290)
                   controlPoint1:CGPointMake(250, 0)
                   controlPoint2:CGPointMake(250, 300)];
    // 将第二条线，加到第一条线上面去
    [bezierPath appendPath:bezierPath2];
    // 开始绘制
    [bezierPath stroke];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
