//
//  PreviewViewController.h
//  QLPreviewFile
//
//  Created by zzg on 2018/2/27.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>

@interface PreviewItem : NSObject <QLPreviewItem>

@property (nonatomic, strong) NSURL *previewItemURL;
@property (nonatomic, strong) NSString *previewItemTitle;

@end

@interface PreviewViewController : QLPreviewController

@end
