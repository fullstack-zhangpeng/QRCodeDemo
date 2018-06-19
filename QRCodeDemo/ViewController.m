//
//  ViewController.m
//  QRCodeDemo
//
//  Created by 张鹏 on 2017/12/14.
//  Copyright © 2017年 zhangpeng. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+QRCode.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //无logo
//    self.imageView.image = [UIImage qrImgForString:@"http://blog.zhangpeng.site" size:CGSizeMake(100, 100) waterImg:nil];
    
    //有logo
    self.imageView.image = [UIImage qrImgForString:@"http://blog.zhangpeng.site" size:CGSizeMake(100, 100) waterImg:[UIImage imageNamed:@"testLogo"]];
}

- (IBAction)clickSpliceButton:(UIButton *)sender {
    
}

- (IBAction)clickChangeColorButton:(UIButton *)sender {
    
    self.imageView.image = [UIImage changeColorWithQRCodeImg:self.imageView.image red:255 green:192 blue:203];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
