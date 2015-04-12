//
//  FWButton.h
//  FWButtonTest
//
//  Created by WangPF on 15/4/11.
//  Copyright (c) 2015年 com.FieldWong.FWButton. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    PictureLeftAndTitleRight,
    PictureRightAndTitleLeft,
    PictureTopAndTitleBottom,
    PictureBottomAndTitleTop,
} ButtonPositionType;

typedef enum : NSUInteger {
    RectShape,
    CircleShape,
} ShapeType;

@interface FWButton : UIControl

//buttonType  default is PictureLeftAndTitleRight;
@property (nonatomic, assign)ButtonPositionType buttonPositionType;

//shapeType default is RectShape
@property (nonatomic, assign)ShapeType shapeType;

@property (nonatomic, strong)UIImage *buttonImage;  //image
@property (nonatomic, strong)UIImage *buttonHighlightImage;  //selected image
@property (nonatomic, strong)UIImageView *imageView;    //imageView
@property (nonatomic, strong)UILabel  *titleLabel;    //titel label

@property (nonatomic, copy)NSString *buttonTitle;       //title


- (id)initWithFrame:(CGRect)frame positionType:(ButtonPositionType)buttonPositionType shapeType:(ShapeType)shapeType;


@end
