//
//  ViewController.m
//  FWButtonTest
//
//  Created by WangPF on 15/4/11.
//  Copyright (c) 2015年 com.FieldWong.FWButton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fwButton.shapeType = CircleShape;
    _fwButton.buttonTitle = @"button1";
    _fwButton2.shapeType = RectShape;
    _fwButton2.buttonTitle = @"button2";
    
    _fwButton3.buttonPositionType = PictureRightAndTitleLeft;
    _fwButton3.shapeType = CircleShape;
    _fwButton3.buttonTitle = @"button3";
    
    _fwButton4.buttonPositionType = PictureRightAndTitleLeft;
    _fwButton4.shapeType = RectShape;
    _fwButton4.buttonTitle = @"button4";
    
    _fwButton5.buttonPositionType = PictureBottomAndTitleTop;
    _fwButton5.shapeType = RectShape;
    _fwButton5.buttonTitle = @"button5";
    
    _fwButton6.buttonPositionType = PictureBottomAndTitleTop;
    _fwButton6.shapeType = CircleShape;
    _fwButton6.buttonTitle = @"button6";
    
    _fwButton7.buttonPositionType = PictureTopAndTitleBottom;
    _fwButton7.shapeType = CircleShape;
    _fwButton7.buttonTitle = @"button7";
    
    _fwButton8.buttonPositionType = PictureTopAndTitleBottom;
    _fwButton8.shapeType = RectShape;
    _fwButton8.buttonTitle = @"button8";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
