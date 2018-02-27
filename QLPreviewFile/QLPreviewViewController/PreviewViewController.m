//
//  PreviewViewController.m
//  QLPreviewFile
//
//  Created by zzg on 2018/2/27.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "PreviewViewController.h"

@implementation PreviewItem

@end


@interface PreviewViewController ()<QLPreviewControllerDataSource>
@property (nonatomic, strong) NSURL * fileUrl;
@end

@implementation PreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.dataSource = self;
    
    NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"123.pdf" ofType:nil];
    self.fileUrl = [NSURL fileURLWithPath:urlStr];
    
}

#pragma mark - QLPreviewController
- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller {
    return 1;
}

- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    PreviewItem * item = [[PreviewItem alloc] init];
    item.previewItemURL = self.fileUrl;
    item.previewItemTitle = @"文件预览demo";
    return item;
}



@end
