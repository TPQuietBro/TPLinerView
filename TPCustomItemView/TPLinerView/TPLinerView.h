//
//  TPLinerView.h
//  TPCustomItemView
//
//  Created by allentang on 2017/11/29.
//  Copyright © 2017年 allentang. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 CGFloat topInset = 10;
 CGFloat leftInset = 15;
 CGFloat height = 28;
 CGFloat marginY = 5;
 CGFloat marginX = 10;
 NSInteger transformIndex = 0;
 CGFloat labelX = 0;
 */
@interface TPLinerView : UIView
@property (nonatomic,assign) CGFloat topInset;
@property (nonatomic,assign) CGFloat leftInset;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGFloat marginY;
@property (nonatomic,assign) CGFloat marginX;
@property (nonatomic,assign) NSInteger transformIndex;
@property (nonatomic,assign) CGFloat labelX;
@property (nonatomic,strong) NSArray *tagArray;
- (instancetype)initWithTags:(NSArray *)tags;
@end
