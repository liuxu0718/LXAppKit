//
//  AppUploadImageManager.h
//  ZSChineseMedicine
//
//  Created by 刘旭 on 16/8/12.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AppUploadImageManagerDelegate <NSObject>

- (void)finishpickingImage:(UIImage *)scaleImage;

@end

@interface AppUploadImageManager : UIView

@property (weak, nonatomic) id <AppUploadImageManagerDelegate> delegate;

- (void)uploadImageWithDelegate:(id<AppUploadImageManagerDelegate>)delegate;

@end
