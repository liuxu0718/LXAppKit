//
//  AppConfig.h
//  Project_iOS
//
//  Created by 刘旭 on 16/1/7.
//  Copyright © 2016年 刘旭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppConfig : NSObject
/// 获取设备尺寸 如：320X568
@property (nonatomic, copy) NSString *deviceScreenBoundsRecord;

/// 获取设备标示
@property (nonatomic, copy) NSString *imei;

/// 本应用在appStore的ID
@property (nonatomic, copy) NSString *appStoreId;

/// 3G API URL
@property (nonatomic, copy) NSString *mApiUrl;
@property (nonatomic, copy) NSString *mTestUrl;

/// 客户端代码，用在UA中
@property (nonatomic, copy) NSString *clientCode;

/// 客户端名称，用在关于中体现
@property (nonatomic, copy) NSString *clientName;

/// 客户端版本号
@property (nonatomic, copy) NSString *version;

/// 服务版本号
@property (nonatomic, copy) NSString *serverVersion;

/// 设备型号 如iphone6
@property (nonatomic, copy) NSString *deviceModel;

/// 设备信息 如iOS 9.1
@property (nonatomic, copy) NSString *deviceInfo;

/// 数据库路径
@property (nonatomic, copy) NSString *databasePath;

/// 网络延迟
@property (nonatomic, assign) NSUInteger httpTimeout;

@end
