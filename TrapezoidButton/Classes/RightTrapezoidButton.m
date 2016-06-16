//
//  LeftTrapezoidButton.m
//  BasketBall
//
//  Created by 辛少丰 on 16/5/14.
//  Copyright © 2016年 YYC. All rights reserved.
//

#import "RightTrapezoidButton.h"
#define Bounds_w(val) ((val).bounds.size.width)
#define Bounds_h(val) ((val).bounds.size.height)

@interface RightTrapezoidButton()
{
    BOOL isSelectedSelf;
}
@end

@implementation RightTrapezoidButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}
- (void)setSelected:(BOOL)selected{
    [super setSelected:selected];
    
    if (selected==YES) {
        isSelectedSelf=YES;
    }else{
        isSelectedSelf=NO;
    }
    [self setNeedsDisplay];
}
// 覆盖drawRect方法，你可以在此自定义绘画和动画
- (void)drawRect:(CGRect)rect
{
    //An opaque type that represents a Quartz 2D drawing environment.
    //一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *aColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    if (isSelectedSelf==NO) {
        aColor = [UIColor colorWithRed:213/255.0 green:26/255.0 blue:33/255.0 alpha:1];
    }
    CGContextSetFillColorWithColor(context, aColor.CGColor);//填充颜色
    /*画梯形*/
    //只要四个点就行跟画一条线方式一样，把四点连接起来
    CGContextSetRGBStrokeColor(context,1,1,1,1.0);//画笔线的颜色
    CGPoint sPoints[4];//坐标点
    sPoints[0] =CGPointMake(25, 0);//坐标1
    sPoints[1] =CGPointMake(Bounds_w(self), 0);//坐标2
    sPoints[2] =CGPointMake(Bounds_w(self), Bounds_h(self));//坐标3
    sPoints[3] =CGPointMake(0, Bounds_h(self));//坐标4
    CGContextAddLines(context, sPoints, 4);//添加线
    CGContextClosePath(context);//封起来
    CGContextDrawPath(context, kCGPathFillStroke); //根据坐标绘制路径
}
@end
