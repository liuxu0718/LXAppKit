//
//  UIFont+Ext.m
//  InsightCustomer
//
//  Created by wangtao on 15/3/7.
//  Copyright (c) 2015年 wangtao. All rights reserved.
//

#import "UIFont+Ext.h"

@implementation UIFont (Ext)
+ (UIFont *)pingFangFontOfSize:(CGFloat)fontSize{
    ///PingFangHK-Medium PingFangSC-Medium PingFangTC-Medium
    return [UIFont systemFontOfSize:fontSize];
//    return [UIFont fontWithName:@"PingFangSC-Light" size:fontSize]; ///平方中等
}
@end
