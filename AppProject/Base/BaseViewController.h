//
//  BaseViewController.h
//  ZSChineseMedicine
//
//  Created by 刘旭 on 16/7/26.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UIColor *navigationBarColor;

///leftItem事件
- (void)leftBarButtonItemClick:(id)sender;

///rightItem事件
- (void)rightBarButtonItemClick:(id)sender;

///rightItem image
- (void)addNavigationRightButtonWithImageName:(NSString *)imageName
                                  Highlighted:(NSString *)highlighted;

///rightItem title
- (void)addNavigationRightButtonWithText:(NSString *)text;

///leftItem image
- (void)addNavigationLeftButtonWithImageName:(NSString *)imageName
                                 Highlighted:(NSString *)highlighted;


///leftItem title
- (void)addNavigationleftButtonWithText:(NSString *)text;

///titleView iamge
- (void)addNavigationTitleViewWithImageName:(NSString *)imageName;

@end
