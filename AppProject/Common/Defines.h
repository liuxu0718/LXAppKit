//
//  Defines.h
//  ZSChineseMedicine
//
//  Created by 刘旭 on 16/7/26.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#ifndef Defines_h
#define Defines_h

#define DebugLog(s, ...) NSLog(@"%s(%d): %@", __FUNCTION__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
/*
 *屏幕宽度
 */
#define SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)

/*
 *屏幕高度
 */
#define SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)

/*
 *屏幕高度系数比例
 */
#define WIDTH_SCALE ([[UIScreen mainScreen]bounds].size.width / 375)

/*
 *屏幕高度系数比例
 */
#define HEIGHT_SCALE ([[UIScreen mainScreen]bounds].size.height / 667)

/*
 * iPhone statusbar 高度
 */
#define PHONE_STATUSBAR_HEIGHT          20

/*
 * iPhone默认导航条高度
 */
//#define PHONE_NAVIGATIONBAR_HEIGHT      44.0f
#define PHONE_NAVIGATIONBAR_IOS7_HEIGHT 64.0f
// tabBar高度
#define PHONE_CUSTOM_TABBAR_HEIGHT      49.0f
//color
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:1.0]

#define UIColorFromRGBA(rgbValue, alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define kAppBlackColor UIColorFromRGB(0x333333)
#define kAppTextColor  UIColorFromRGB(0x666666)
#define kAppIntroColor  UIColorFromRGB(0x999999)
#define kAppPlaceHolderColor UIColorFromRGB(0xcccccc)

#define kAppCommonColor UIColorFromRGB(0xed6d2b)
#define kAppBgCommonColor UIColorFromRGB(0xf0f0f0)
#define kAppLineColor UIColorFromRGB(0xeaeaea)


#define AppRequestServerReturnError (-2)
#define AppRequestConnectError      -1
#define AppRequestSuccess           0

#define kHeadImagePlaceHolder [UIImage imageNamed:@"head_placeHolder"]
#define kImagePlaceHolder [UIImage imageNamed:@"placeHolder"]

//#define kDeposit 0.01

#endif /* Defines_h */
