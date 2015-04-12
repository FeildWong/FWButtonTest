//
//  FWButton.m
//  FWButtonTest
//
//  Created by WangPF on 15/4/11.
//  Copyright (c) 2015年 com.FieldWong.FWButton. All rights reserved.
//

#import "FWButton.h"


#define interval 5.0    //声明间隔

@implementation FWButton

- (id)initWithFrame:(CGRect)frame positionType:(ButtonPositionType)buttonPositionType shapeType:(ShapeType)shapeType
{
    self = [super initWithFrame:frame];
    self.buttonPositionType = buttonPositionType;
    self.shapeType = shapeType;
    return self;
}

- (void)layoutSubviews
{
    _imageView = [[UIImageView alloc] initWithImage:_buttonImage];
    _imageView.backgroundColor = [UIColor orangeColor];
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.backgroundColor = [UIColor grayColor];
    _titleLabel.text = _buttonTitle;
    
    switch (_buttonPositionType) {
        case PictureLeftAndTitleRight:
            [self setLeftAndRightView];
            break;
        case PictureRightAndTitleLeft:
            [self setRightAndLeftView];
            break;
        case PictureBottomAndTitleTop:
            [self setBottomAndTopView];
            break;
        case PictureTopAndTitleBottom:
            [self setTopAndBottomview];
            break;
            
        default:
            break;
    }
    
    [self addSubview:_imageView];
    [self addSubview:_titleLabel];
    
}

//setting image and title
- (void)setLeftAndRightView
{
    _imageView.frame =CGRectMake(0, 0, self.frame.size.height, self.frame.size.height);
    
    if (self.shapeType == RectShape) {
        
    }else if (self.shapeType == CircleShape){
        
        _imageView.layer.cornerRadius = self.frame.size.height/2;
    }
    
    _titleLabel.frame = CGRectMake(CGRectGetMaxX(_imageView.frame) + interval, 0, self.frame.size.width - _imageView.frame.size.width - interval, self.frame.size.height);
    
    
}
- (void)setRightAndLeftView
{
    _titleLabel.frame = CGRectMake(0, 0, self.frame.size.width - _imageView.frame.size.width - interval, self.frame.size.height);
    _imageView.frame =CGRectMake(CGRectGetMaxX(_titleLabel.frame) + interval, 0, self.frame.size.height, self.frame.size.height);
    
    if (self.shapeType == RectShape) {
        
    }else if (self.shapeType == CircleShape){
        
        _imageView.layer.cornerRadius = self.frame.size.height/2;
    }
    
}
- (void)setBottomAndTopView
{
    _titleLabel.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - self.frame.size.width - interval);
    _imageView.frame =CGRectMake(0, self.frame.size.height - self.frame.size.width, self.frame.size.width, self.frame.size.width);
    
    if (self.shapeType == RectShape) {
        
    }else if (self.shapeType == CircleShape){
        
        _imageView.layer.cornerRadius = self.frame.size.width/2;
    }
    
}
- (void)setTopAndBottomview
{
    _imageView.frame =CGRectMake(0, 0, self.frame.size.width, self.frame.size.width);
    
    if (self.shapeType == RectShape) {
        
    }else if (self.shapeType == CircleShape){
        
        _imageView.layer.cornerRadius = self.frame.size.width/2;
    }
    
    _titleLabel.frame = CGRectMake( 0 , CGRectGetMaxY(_imageView.frame) + interval, self.frame.size.width, self.frame.size.height -_imageView.frame.size.height - interval);
}





@end
