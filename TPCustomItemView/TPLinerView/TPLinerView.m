//
//  TPLinerView.m
//  TPCustomItemView
//
//  Created by allentang on 2017/11/29.
//  Copyright © 2017年 allentang. All rights reserved.
//

#import "TPLinerView.h"

#define ButtonTag 212121
@interface TPLinerView()
@property (nonatomic,strong) UIScrollView *contentView;
@property (nonatomic,strong) NSMutableArray *buttonArray;
@property (nonatomic,strong) NSArray *tags;
@end

@implementation TPLinerView

#pragma mark - init methods

- (instancetype)initWithTags:(NSArray *)tags
{
    self = [super init];
    if (self) {
        self.tags = tags;
        [self initSubviews];
    }
    return self;
}
- (void)initSubviews{
    [self addSubview:self.contentView];
    if (self.tags.count == 0) return;
    for (NSInteger i = 0; i < self.tags.count; ++i) {
        NSString *title = self.tags[i];
        UIButton *label = [[UIButton alloc] init];
        label.titleLabel.font = [UIFont systemFontOfSize:14];
        [label setTitle:title forState:UIControlStateNormal];
        [label setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [label setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        label.tag = ButtonTag + i;
        [label addTarget:self action:@selector(selectedTag:) forControlEvents:UIControlEventTouchUpInside];
        label.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:label];
        [self.buttonArray addObject:label];
    }
}
- (void)layoutSubviews{
    [super layoutSubviews];
    self.contentView.frame = self.bounds;
    CGFloat topInset = 10;
    CGFloat leftInset = 15;
    CGFloat height = 28;
    CGFloat marginY = 5;
    CGFloat marginX = 10;
    NSInteger transformIndex = 0;
    CGFloat labelX = 0;
    for (NSInteger i = 0; i < self.buttonArray.count; ++i) {
        UIButton *label = self.buttonArray[i];
        CGFloat width = [label.titleLabel.text sizeWithAttributes:@{NSFontAttributeName : label.titleLabel.font}].width + 15;
        label.frame = CGRectMake(leftInset + labelX, topInset + transformIndex * (height + marginY), width, height);
        
        if (CGRectGetMaxX(label.frame) > self.contentView.frame.size.width) {
            transformIndex ++;
            CGRect frame = label.frame;
            frame.origin.x = leftInset;
            frame.origin.y = topInset + transformIndex * (height + marginY);
            label.frame = frame;
            labelX = 0;
        }
        
        labelX += width + marginX;
        if (i == self.buttonArray.count - 1) {
            self.contentView.contentSize = CGSizeMake(0, CGRectGetMaxY(label.frame) + 10);
        }
    }
    
}

#pragma mark - event response
- (void)selectedTag:(UIButton *)sender{
    
}

#pragma mark - getter / setter
- (void)setTagArray:(NSArray *)tagArray{
    _tagArray = tagArray;
}
- (NSMutableArray *)buttonArray{
    if (!_buttonArray) {
        _buttonArray = [[NSMutableArray alloc] init];
        
    }
    return _buttonArray;
}
- (UIScrollView *)contentView{
    if (!_contentView) {
        _contentView = [[UIScrollView alloc] init];
        _contentView.backgroundColor = [UIColor brownColor];
        
    }
    return _contentView;
}

@end
