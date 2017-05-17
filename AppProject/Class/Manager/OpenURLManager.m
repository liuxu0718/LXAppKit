//
//  OpenURLManager.m
//  OpenURLDemo
//
//  Created by shaowei on 13-4-11.
//  Copyright (c) 2013年 LianZhan. All rights reserved.
//

#import "OpenURLManager.h"

@implementation OpenURLManager

#pragma mark Function - Private

/**
 用于弹出警告提示信息
 @param title:警告框的标题
 @param content:警告框显示的提示性内容
 */

+ (void)showAlertTitle:(NSString *)title andContent:(NSString *)content{
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:title
                                                 message:content
                                                delegate:nil
                                       cancelButtonTitle:@"确定"
                                       otherButtonTitles:nil, nil];
    [av show];
}

/**
 调用电话
 @param phoneNumber:需要拨打的电话
 */
+ (void)callTelWithPhoneNumber:(NSString *)phoneNumber{
    //判断是否是有效号码
    if (phoneNumber.length < 2) {
        return ;
    }
    if ([[phoneNumber substringToIndex:2] isEqualToString:@"暂无"]) {
//        [SVProgressHUD showErrorWithStatus:@"不是有效的号码"];
        return ;
    }
    
    UIApplication *app =[UIApplication sharedApplication];
    NSString *fullString = [NSString stringWithFormat:@"tel://%@",phoneNumber];
    NSURL *url = [NSURL URLWithString:fullString];
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }else{
        //手机客户端不支持此功能
        [OpenURLManager showAlertTitle:@"不能电话功能"
                            andContent:@"您的设备可能不支持电话功能"];
    }
}


/**
 调用邮件客户端
 @param email:您要发送邮件的接收方的邮件地址
 */
+ (void)callEmailWithemail:(NSString *)email {
    UIApplication *app =[UIApplication sharedApplication];
    NSString *fullString = [NSString stringWithFormat:@"mailto://%@",email];
    NSURL *url = [NSURL URLWithString:fullString];
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }else{
        //手机客户端不支持此功能
        [OpenURLManager showAlertTitle:@"不能打开邮件客户端"
                            andContent:@"您的设备可能不支持邮件功能"];
    }
    
}

/**
 调用浏览器
 @param email:您要发送邮件的接收方的邮件地址
 */
+ (void)callWebBrowserWithURL:(NSString *)urlString{
    UIApplication *app =[UIApplication sharedApplication];
    
    //为用户增加http前缀
    if ([urlString hasPrefix:@"www"]) {
        urlString = [NSString stringWithFormat:@"http://%@",urlString];
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }else{
        //手机客户端不支持此功能
        [OpenURLManager showAlertTitle:@"不能打开该网站"
                            andContent:@"您的网址可能不正确"];
    }
}


//检测是否是手机号码
+ (BOOL)isMobileNumber:(NSString *)mobileNum {
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     * 联通：130,131,132,152,155,156,185,186
     * 电信：133,1349,153,180,189
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[0-9]|4[57]|7[0-9])\\d{8}$";
    /**
     10         * 中国移动：China Mobile
     11         * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     12         */
    NSString * CM = @"^1(7[059]|(3[5-9]|5[017-9]|8[278]|78)\\d)\\d{7}$";
    /**
     15         * 中国联通：China Unicom
     16         * 130,131,132,152,155,156,185,186
     17         */
    NSString * CU = @"^1(3[0-2]|5[256]|8[56]|76)\\d{8}$";
    /**
     20         * 中国电信：China Telecom
     21         * 133,1349,153,180,189
     22         */
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    /**
     25         * 大陆地区固话及小灵通
     26         * 区号：010,020,021,022,023,024,025,027,028,029
     27         * 号码：七位或八位
     28         */
    // NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:mobileNum] == YES)
        || ([regextestcm evaluateWithObject:mobileNum] == YES)
        || ([regextestct evaluateWithObject:mobileNum] == YES)
        || ([regextestcu evaluateWithObject:mobileNum] == YES))
    {
        // NMQLog(@"手机号码正确");
        return YES;
    }
    else
    {
        // NMQLog(@"手机号码不正确");
        return NO;
    }
}


@end
