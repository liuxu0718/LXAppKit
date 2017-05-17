//
//  AppUser.h
//  Project_iOS
//
//  Created by 刘旭 on 16/1/6.
//  Copyright © 2016年 刘旭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppUser : NSObject

//@property (nonatomic, copy) NSString *md5Token;
//@property (nonatomic, copy) NSString *realName;//名字
//@property (nonatomic, copy) NSString *userImg;//头像
//@property (nonatomic, assign) NSInteger authenStatus;//是否验证过
//@property (nonatomic, copy) NSString *nationality;//国籍
//@property (nonatomic, assign) NSInteger updateAt;
//@property (nonatomic, assign) NSInteger Id;//用户ID
//@property (nonatomic, copy) NSString *idNumber;//身份证号
//@property (nonatomic, assign) NSInteger securityStatus;//是否交过押金
//@property (nonatomic, copy) NSString *iphone;//手机号
//@property (nonatomic, assign) long long createAt;
//@property (nonatomic, assign) CGFloat amount;//用户余额
//@property (nonatomic, assign) CGFloat totalMileage;//总距离
//@property (nonatomic, assign) CGFloat totalcyclingTime;//总时间
//
//@property (nonatomic, copy) NSString *cycleNum;//车辆编号
//@property (nonatomic, assign) CGFloat userLongtitude;//经度
//@property (nonatomic, assign) CGFloat userLatitude;//纬度
////@property (nonatomic, assign) CGFloat deposit;//用户的押金
//@property (nonatomic, copy) NSString *photoImage;//手持照片
//@property (nonatomic, copy) NSString *IDImage;//身份证照片
//@property (nonatomic, copy) NSString *accessToken;//token
////@property (nonatomic, copy) NSString *guid;//阿里云deviceId

+ (NSString *)documentPath;
+ (NSString *)commonPath;
+ (NSString *)emotionPath;

- (BOOL)persistence;
- (BOOL)isLogin;

- (NSString *)userDocumentPath;
- (void)registerCookie;
- (void)clearCookie;
- (void)logout;

+ (AppUser *)wakeUpUser;
+ (AppUser *)makeAppUser:(NSDictionary *)dict;
@end
