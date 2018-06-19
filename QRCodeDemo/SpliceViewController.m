//
//  SpliceViewController.m
//  QRCodeDemo
//
//  Created by 张鹏 on 2017/12/14.
//  Copyright © 2017年 zhangpeng. All rights reserved.
//

#import "SpliceViewController.h"
#import "UIImage+QRCode.h"

@interface SpliceViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation SpliceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    size1.width/4.0, size1.height/2.5, size1.width/2, size1.width/2
    self.imageView.image = [UIImage spliceImg1:[UIImage imageNamed:@"bg"] img2:[UIImage qrImgForString:@"http://blog.zhangpeng.site" size:CGSizeMake(100, 100) waterImg:[UIImage imageNamed:@"testLogo"]] img2Location:CGPointMake(260, 625)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
