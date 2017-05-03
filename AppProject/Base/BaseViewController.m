//
//  BaseViewController.m
//  ZSChineseMedicine
//
//  Created by 刘旭 on 16/7/26.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#import "BaseViewController.h"
#import "IQKeyboardManager.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
//    [SVProgressHUD dismiss];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSInteger x = [self.navigationController.viewControllers count];
    if (x > 1 && !self.navigationItem.leftBarButtonItem) {
        [self addNavigationLeftButtonWithImageName:@"common_fanhui_n" Highlighted:@"common_fanhui_y"];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = kAppBgCommonColor;
    [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
}

#pragma mark NavigationColor
- (void)setNavigationBarColor:(UIColor *)navigationBarColor {
    _navigationBarColor = navigationBarColor;
    UIImage *colorImage = [UIImage imageWithColor:_navigationBarColor];
    [self.navigationController.navigationBar setNavigationBarWithImage:colorImage];
}

- (void)addNavigationLeftButtonWithImageName:(NSString *)imageName
                                 Highlighted:(NSString *)highlighted {
//    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 60)];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 46, 46)];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, -25, 0, 0)];
    [button addTarget:self action:@selector(leftBarButtonItemClick:) forControlEvents:UIControlEventTouchUpInside];
//    [leftView addSubview:button];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = buttonItem;
}

- (void)addNavigationRightButtonWithImageName:(NSString *)imageName
                                  Highlighted:(NSString *)highlighted {
//    UIView *rightView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 60)];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 46, 46)];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -25)];
//    [rightView addSubview:btn];
//    btn.tag = 1;
    [button addTarget:self action:@selector(rightBarButtonItemClick:) forControlEvents:UIControlEventTouchDown];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = buttonItem;
}

- (void)addNavigationRightButtonWithText:(NSString *)text {
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 46, 46)];
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:UIColorFromRGB(0xcccccc) forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont pingFangFontOfSize:13];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -10)];
    [button addTarget:self action:@selector(rightBarButtonItemClick:) forControlEvents:UIControlEventTouchDown];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = buttonItem;
}

- (void)addNavigationleftButtonWithText:(NSString *)text {
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 46, 46)];
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:UIColorFromRGB(0x666666) forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont pingFangFontOfSize:11];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -25, 0, 0)];
    [button addTarget:self action:@selector(leftBarButtonItemClick:) forControlEvents:UIControlEventTouchDown];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = buttonItem;
}

- (void)addNavigationTitleViewWithImageName:(NSString *)imageName {
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.navigationItem.titleView = imageView;
}

- (void)leftBarButtonItemClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightBarButtonItemClick:(id)sender {
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
