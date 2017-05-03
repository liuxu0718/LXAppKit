//
//  OpenURLManager.h
//  OpenURLDemo
//
//  Created by shaowei on 13-4-11.
//  Copyright (c) 2013年 LianZhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <AddressBook/AddressBook.h>

@interface OpenURLManager : NSObject

+ (void)callTelWithPhoneNumber:(NSString *)phoneNumber;
+ (void)callEmailWithemail:(NSString *)email;
+ (void)callWebBrowserWithURL:(NSString *)urlString;

//检测是否是手机号码
+ (BOOL)isMobileNumber:(NSString *)mobileNum;

@end
