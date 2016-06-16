//
//  XinViewController.m
//  TrapezoidButton
//
//  Created by caoyanan on 06/16/2016.
//  Copyright (c) 2016 caoyanan. All rights reserved.
//

#import "XinViewController.h"
#import "LeftTrapezoidButton.h"
#import "RightTrapezoidButton.h"
#define Bounds_w(val) ((val).bounds.size.width)
#define Bounds_h(val) ((val).bounds.size.height)

@interface XinViewController ()
{
    LeftTrapezoidButton *leftTrapezoidButton;
    RightTrapezoidButton *rightTrapezoidButton;
}
@end

@implementation XinViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    
    
    leftTrapezoidButton=[[LeftTrapezoidButton alloc] initWithFrame:CGRectMake(Bounds_w(self.view)/2-70, (Bounds_h(self.view)-26)/2, 86, 26)];
    [leftTrapezoidButton setTitle:@"球队约战" forState:UIControlStateNormal];
    [leftTrapezoidButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 15, 0, 30)];
    [leftTrapezoidButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [leftTrapezoidButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    leftTrapezoidButton.titleLabel.font=[UIFont systemFontOfSize:10];
    [leftTrapezoidButton addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    leftTrapezoidButton.tag=202;
    [self.view addSubview:leftTrapezoidButton];
    leftTrapezoidButton.selected=YES;
    
    rightTrapezoidButton=[[RightTrapezoidButton alloc] initWithFrame:CGRectMake(Bounds_w(self.view)/2-4, (Bounds_h(self.view)-26)/2, 86, 26)];
    [rightTrapezoidButton setTitle:@"野球娱乐" forState:UIControlStateNormal];
    [rightTrapezoidButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 15)];
    [rightTrapezoidButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightTrapezoidButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    rightTrapezoidButton.titleLabel.font=[UIFont systemFontOfSize:10];
    [rightTrapezoidButton addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    rightTrapezoidButton.tag=203;
    [self.view addSubview:rightTrapezoidButton];

}
- (void)btnClicked:(UIButton *)button{
    if(button==leftTrapezoidButton){
        leftTrapezoidButton.selected=YES;
        rightTrapezoidButton.selected=NO;
    }else if(button==rightTrapezoidButton){
        leftTrapezoidButton.selected=NO;
        rightTrapezoidButton.selected=YES;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
