//
//  MainViewController.m
//  QLPreviewFile
//
//  Created by hzbj on 2018/3/6.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "MainViewController.h"
#import "PreviewViewController.h"
#import "WebViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 100, 100);
    btn1.backgroundColor = [UIColor redColor];
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 300, 100, 100);
    btn2.backgroundColor = [UIColor redColor];
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}
- (void)btn1Click {
    PreviewViewController * preview = [[PreviewViewController alloc] init];
    [self.navigationController pushViewController:preview animated:YES];
}

- (void)btn2Click {
    WebViewController * webView = [[WebViewController alloc] init];
    [self.navigationController pushViewController:webView animated:YES];
}

@end
