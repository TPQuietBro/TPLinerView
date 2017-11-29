//
//  ViewController.m
//  TPCustomItemView
//
//  Created by allentang on 2017/11/29.
//  Copyright © 2017年 allentang. All rights reserved.
//

#import "ViewController.h"
#import "TPLinerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIScrollView *contentView = [[UIScrollView alloc] init];
//    contentView.backgroundColor = [UIColor brownColor];
//    contentView.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 250);
//    //[self.view addSubview:contentView];
    NSArray *content = @[@"123",@"1212121",@"21212",@"212121212121",@"12121212",@"123",@"1212121",@"21212",@"212121212121",@"12121212",@"123",@"1212121",@"21212",@"212121212121",@"12121212",@"212121212121",@"12121212",@"123",@"1212121",@"21212",@"212121212121",@"12121212",@"212121212121",@"12121212",@"123",@"1212121",@"21212",@"212121212121",@"12121212",@"212121212121",@"12121212",@"123",@"1212121",@"21212",@"212121212121",@"12121212"];
//    CGFloat topInset = 10;
//    CGFloat leftInset = 15;
//    CGFloat height = 28;
//    CGFloat marginY = 5;
//    CGFloat marginX = 10;
//    NSInteger transformIndex = 0;
//    CGFloat labelX = 0;
//    for (NSInteger i = 0; i < content.count; ++i) {
//        NSString *title = content[i];
//
//        UILabel *label = [[UILabel alloc] init];
//        label.font = [UIFont systemFontOfSize:14];
//        label.textAlignment = NSTextAlignmentCenter;
//        label.text = title;
//        label.backgroundColor = [UIColor whiteColor];
//        [contentView addSubview:label];
//
//        CGFloat width = [title sizeWithAttributes:@{NSFontAttributeName : label.font}].width + 15;
//        label.frame = CGRectMake(leftInset + labelX, topInset + transformIndex * (height + marginY), width, height);
//
//        if (CGRectGetMaxX(label.frame) > contentView.frame.size.width) {
//            transformIndex ++;
//            CGRect frame = label.frame;
//            frame.origin.x = leftInset;
//            frame.origin.y = topInset + transformIndex * (height + marginY);
//            label.frame = frame;
//            labelX = 0;
//        }
//
//        labelX += width + marginX;
//    }
    TPLinerView *view = [[TPLinerView alloc] initWithTags:content];
    view.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 250);
    [self.view addSubview:view];
}


@end
