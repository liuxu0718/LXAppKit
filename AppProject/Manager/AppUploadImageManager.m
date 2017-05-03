//
//  AppUploadImageManager.m
//  ZSChineseMedicine
//
//  Created by 刘旭 on 16/8/12.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUploadImageManager.h"

@interface AppUploadImageManager ()<UIActionSheetDelegate,
UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIViewController *myViewController;

@end

@implementation AppUploadImageManager

- (id)init {
    if (self = [super init]) {
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        self.userInteractionEnabled = NO;
    }
    return self;
}

- (void)uploadImageWithDelegate:(id<AppUploadImageManagerDelegate>)delegate {
    self.myViewController = (UIViewController *)delegate;
    self.delegate     = delegate;
    [self.myViewController.view addSubview:self];
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                                    delegate:self
                                                           cancelButtonTitle:@"取消"
                                                      destructiveButtonTitle:nil
                                                           otherButtonTitles:@"相册上传",@"拍照", nil];
    [actionSheet showInView:self.myViewController.view];
}

#pragma mark -
#pragma mark actionsheet delegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    switch (buttonIndex) {
        case 0://From album
            picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            [self.myViewController presentViewController:picker animated:YES completion:nil];
            break;
            
        case 1://Take picture
            if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                picker.sourceType = UIImagePickerControllerSourceTypeCamera;
                [self.myViewController presentViewController:picker animated:YES completion:nil];
            } else {
                NSLog(@"模拟器无法打开相机");
            }
            break;
        default:
            [self removeFromSuperview];
            break;
    }
}

#pragma mark-
#pragma mark imagepicker Delegate
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
    if ([mediaType isEqualToString:@"public.image"]){
        //切忌不可直接使用originImage，因为这是没有经过格式化的图片数据，可能会导致选择的图片颠倒或是失真等现象的发生，从UIImagePickerControllerOriginalImage中的Origin可以看出，很原始
        UIImage *originImage = [info objectForKey:UIImagePickerControllerOriginalImage];
        //图片压缩，因为原图都是很大的，不必要传原图
        UIImage *scaleImage = [UIImage scaleImage:originImage toScale:0.2];
        if ([_delegate respondsToSelector:@selector(finishpickingImage:)]) {
            [_delegate finishpickingImage:scaleImage];
        }
    }
    [self removeFromSuperview];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
