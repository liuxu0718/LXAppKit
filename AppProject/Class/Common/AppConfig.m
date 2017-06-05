//
//  AppConfig.m
//  Project_iOS
//
//  Created by 刘旭 on 16/1/7.
//  Copyright © 2016年 刘旭. All rights reserved.
//

#import "AppConfig.h"

@implementation AppConfig
- (id)init {
    self = [super init];
    if (self != nil) {
        [self initEnv];
    }
    return self;
}


-(void)initEnv
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex:0];
    
    //标示
//    self.imei = [OpenUDID value];
    
    // 客户端信息
    self.clientCode = @"1.0.0";
    self.clientName = @"Project";
    
    //应用在appStore的ID
    self.appStoreId = @"";
    
    // 应用版本
    self.version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    
    // Path for cache database file
    self.databasePath = [docDir stringByAppendingPathComponent:@"cachedb.sql"];
    
    //延迟
    self.httpTimeout = 25;
    
    //服务版本号
    self.serverVersion = @"1.0.0";
    
    // 设备型号
    UIDevice *device = [[UIDevice alloc]init];
    self.deviceModel = device.modelNameLowerCase;
    self.deviceInfo =  [NSString stringWithFormat:@"iOS%@", device.systemVersionByString];
    // 线上环境参数
    self.mApiUrl = @"";
    
    self.mTestUrl = @"";

    //开发环境将此注释打开
//    self.mApiUrl = self.mTestUrl;
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    NSString *DeviceScreenBounds = [NSString stringWithFormat:@"%dx%d", (int)screenBounds.size.width, (int)screenBounds.size.height];
    self.deviceScreenBoundsRecord = DeviceScreenBounds;
    
}

@end
