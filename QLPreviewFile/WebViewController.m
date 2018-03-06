//
//  WebViewController.m
//  QLPreviewFile
//
//  Created by hzbj on 2018/3/6.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "WebViewController.h"
#import "PreviewViewController.h"

@interface WebViewController ()
@property (nonatomic, strong) UIWebView * myWebView;
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    [self.view addSubview:self.myWebView];
    
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 100, 100);
    btn1.backgroundColor = [UIColor redColor];
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}

- (void)btn1Click {
    PreviewViewController * preview = [[PreviewViewController alloc] init];
    [self.navigationController pushViewController:preview animated:YES];
}


@end
