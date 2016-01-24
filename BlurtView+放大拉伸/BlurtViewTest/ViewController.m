//
//  ViewController.m
//  BlurtViewTest
//
//  Created by XT on 15/11/24.
//  Copyright © 2015年 XT. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LBBlurredImage.h"
#import "ZHBlurtView.h"

#define imageHeight 200
#define iconW       100
#define changeRate  (self.view.frame.size.width / self.view.frame.size.height)
@interface ViewController ()<UITableViewDelegate>
@property (nonatomic,strong)UIImageView *imageView;
@property (nonatomic,weak)UIImageView *icon;
@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic,strong)UIView *oterView;
@property (nonatomic,assign)CGFloat scale;
@property (nonatomic,weak)UILabel *label;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZHBlurtView *b = [[ZHBlurtView alloc] initWithFrame:self.view.frame WithHeaderImgHeight:200 iconHeight:100];

    
    [self.view addSubview:b];
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    
//    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
//    
//    // 不能有背景颜色
////   scrollView.backgroundColor = [UIColor blueColor];
//    
//    scrollView.delegate = self;
//    self.scrollView = scrollView;
//    self.scrollView.alwaysBounceVertical = YES;
//    self.scrollView.decelerationRate = 2;
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, imageHeight)];
//    self.imageView = imageView;
//    self.scale =  self.imageView.frame.size.width / self.imageView.frame.size.height;
////    self.changeRate = self.view.frame.size.height / self.view.frame.size.width;
//    
//    UIImage *image = [UIImage imageNamed:@"1.jpg"];
//    
//    imageView.image = image;
//    
//    // 20 左右 R  模糊图片
//    [imageView setImageToBlur:imageView.image blurRadius:21 completionBlock:nil];
//    
//    
//    
//    UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - iconW) / 2, (imageHeight - iconW) / 2, iconW, iconW)];
//    
//    icon.backgroundColor = [UIColor yellowColor];
//    NSLog(@"%@",NSStringFromCGRect(icon.frame));
//    
//    icon.image = [UIImage imageNamed:@"1.jpg"];
//    icon.layer.cornerRadius = iconW * 0.5;
//    icon.clipsToBounds = YES;
//    self.icon = icon;
//    
//    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(icon.frame) + 10, self.view.frame.size.width, 20)];
//    self.label = name;
//    name.text = @"zhxx";
//    name.textAlignment = NSTextAlignmentCenter;
//    name.textColor = [UIColor whiteColor];
//    
//    
//    UIView *otherVIew = [[UIView alloc] initWithFrame:CGRectMake(0, imageHeight, self.view.frame.size.width, self.view.frame.size.height - imageHeight)];
// 
//    otherVIew.backgroundColor = [UIColor redColor];
//    self.oterView = otherVIew;
//    
//    
//    // 注意添加顺序
//    [scrollView addSubview:otherVIew];
//    [self.view addSubview:imageView];
//    [self.view addSubview:scrollView];
//    [scrollView addSubview:icon];
//    [scrollView addSubview:name];
    
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    int index = arc4random_uniform(3);
//    // 0 1 2
//    NSLog(@"%d",index);
//    
//    
//    CGFloat offsetY = scrollView.contentOffset.y;
//    
//    if (scrollView.contentOffset.y < 0) {
//        // 高度宽度同时拉伸 从中心放大
//        CGFloat imgH = imageHeight - scrollView.contentOffset.y * 2;
//        CGFloat imgW = imgH * self.scale;
//        self.imageView.frame = CGRectMake(scrollView.contentOffset.y * self.scale,0, imgW,imgH);
//        
//        CGFloat iconOriginalX = (self.view.frame.size.width - iconW) / 2;
//        CGFloat iconOriginalY = (imageHeight - iconW) / 2;
//       
//        self.icon.frame = CGRectMake(iconOriginalX + offsetY * changeRate, iconOriginalY + offsetY * changeRate * 2, iconW - changeRate * offsetY * 2, iconW - changeRate * offsetY * 2);
//        self.icon.layer.cornerRadius = self.icon.frame.size.width * 0.5;
//        self.icon.clipsToBounds = YES;
//        
//        self.label.frame = CGRectMake(self.label.frame.origin.x, CGRectGetMaxY(self.icon.frame) + 10, self.label.frame.size.width, self.label.frame.size.height);
//        
//    } else {
//        // 只拉伸高度
//        self.imageView.frame = CGRectMake(0, 0, self.imageView.frame.size.width, 200 - scrollView.contentOffset.y);
//    }
//    
//    
//
//    
//    
//    NSLog(@"%0.0f",scrollView.contentOffset.y);
//}


@end
