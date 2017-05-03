//
//  AppUser.m
//  Project_iOS
//
//  Created by 刘旭 on 16/1/6.
//  Copyright © 2016年 刘旭. All rights reserved.
//

#import "AppUser.h"
#define kAppUserInfoPath        @"user.archiver"
#define kCommonDir              @"common"
#define kEmotionDir             @"emotion"

@implementation AppUser
+ (AppUser *)makeAppUser:(NSDictionary *)dict
{
    AppUser *user = [[AppUser alloc]init];
//    user.md5Token = [dict stringForKey:@"md5Token" withDefault:@""];
//    user.realName = [dict stringForKey:@"realName" withDefault:@"9527"];
//    user.authenStatus = [dict intForKey:@"authenStatus" withDefault:0];
//    user.nationality = [dict stringForKey:@"nationality" withDefault:@""];
//    user.updateAt = [dict intForKey:@"updateAt" withDefault:0];
//    user.Id = [dict intForKey:@"id" withDefault:0];
//    user.idNumber = [dict stringForKey:@"idNumber" withDefault:@""];
//    user.securityStatus = [dict intForKey:@"securityStatus" withDefault:0];
//    user.iphone = [dict stringForKey:@"iphone" withDefault:@""];
//    user.createAt = [dict longLongForKey:@"createAt" withDefault:0];
//    user.userImg = [dict  stringForKey:@"userImg" withDefault:@""];
//    user.amount = [dict floatForKey:@"amount" withDefault:0];
//    user.totalMileage = [dict floatForKey:@"totalMileage" withDefault:0];
//    user.totalcyclingTime = [dict floatForKey:@"totalcyclingTime" withDefault:0];
    BOOL save = [user persistence];
    DebugLog(@"save userInfo:%d",save);
    return user;
}

+ (AppUser *)wakeUpUser
{
    AppUser *user = [NSKeyedUnarchiver unarchiveObjectWithFile:[self userArchiverPath]];
    return user;
}

// App Document 路径
+ (NSString *)documentPath
{
    NSArray  *searchPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [searchPath objectAtIndex:0];
    
    return path;
}

+ (NSString *)userArchiverPath
{
    NSString *path = [[self documentPath] stringByAppendingPathComponent:kAppUserInfoPath];
    return path;
}

// 公共文件夹路径
+ (NSString *)commonPath
{
    NSString *path = [[AppUser documentPath] stringByAppendingPathComponent:kCommonDir];
    [self createFilePath:path];
    return path;
}

// 表情文件夹路径
+ (NSString *)emotionPath
{
    NSString *path = [[AppUser commonPath] stringByAppendingPathComponent:kEmotionDir];
    
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    if (![fileMgr fileExistsAtPath:path]) {
        NSError *error = nil;
        [fileMgr  createDirectoryAtPath:path
            withIntermediateDirectories:YES
                             attributes:nil
                                  error:&error];
        
        if (error) {
            DebugLog(@"创建 commonPath 失败 %@", error);
        }
    }
    
    return path;
}

#pragma mark - NSCoding methods
- (void)encodeWithCoder:(NSCoder *)aCoder {
//    [aCoder encodeObject:self.guid forKey:@"guid"];
//    [aCoder encodeObject:self.md5Token forKey:@"md5Token"];
//    [aCoder encodeObject:self.accessToken forKey:@"accessToken"];
//    [aCoder encodeObject:self.IDImage forKey:@"IDImage"];
//    [aCoder encodeObject:self.photoImage forKey:@"photoImage"];
//    [aCoder encodeObject:@(self.deposit) forKey:@"deposit"];
//    [aCoder encodeObject:@(self.amount) forKey:@"amount"];
//    [aCoder encodeObject:@(self.userLongtitude) forKey:@"userLongtitude"];
//    [aCoder encodeObject:@(self.userLatitude) forKey:@"userLatitude"];
//    [aCoder encodeObject:self.cycleNum forKey:@"cycleNum"];
//    [aCoder encodeObject:self.userImg forKey:@"userImg"];
//    [aCoder encodeObject:self.realName forKey:@"realName"];
//    [aCoder encodeObject:@(self.authenStatus) forKey:@"authenStatus"];
//    [aCoder encodeObject:self.nationality forKey:@"nationality"];
//    [aCoder encodeObject:@(self.updateAt) forKey:@"updateAt"];
//    [aCoder encodeObject:@(self.Id) forKey:@"Id"];
//    [aCoder encodeObject:self.idNumber forKey:@"idNumber"];
//    [aCoder encodeObject:@(self.securityStatus) forKey:@"securityStatus"];
//    [aCoder encodeObject:self.iphone forKey:@"iphone"];
//    [aCoder encodeObject:@(self.createAt) forKey:@"createAt"];
//    [aCoder encodeObject:@(self.totalMileage) forKey:@"totalMileage"];
//    [aCoder encodeObject:@(self.totalcyclingTime) forKey:@"totalcyclingTime"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [self init]) {
//        self.guid = [aDecoder decodeObjectForKey:@"guid"];
//        self.md5Token = [aDecoder decodeObjectForKey:@"md5Token"];
//        self.accessToken = [aDecoder decodeObjectForKey:@"accessToken"];
//        self.IDImage = [aDecoder decodeObjectForKey:@"IDImage"];
//        self.photoImage = [aDecoder decodeObjectForKey:@"photoImage"];
//        self.deposit = [[aDecoder decodeObjectForKey:@"deposit"] floatValue];
//        self.amount = [[aDecoder decodeObjectForKey:@"amount"] floatValue];
//        self.userLongtitude = [[aDecoder decodeObjectForKey:@"userLongtitude"] floatValue];
//        self.userLatitude = [[aDecoder decodeObjectForKey:@"userLatitude"] floatValue];
//        self.cycleNum = [aDecoder decodeObjectForKey:@"cycleNum"];
//        self.userImg = [aDecoder decodeObjectForKey:@"userImg"];
//        self.realName = [aDecoder decodeObjectForKey:@"realName"];
//        self.authenStatus = [[aDecoder decodeObjectForKey:@"authenStatus"] integerValue];
//        self.nationality = [aDecoder decodeObjectForKey:@"nationality"];
//        self.updateAt = [[aDecoder decodeObjectForKey:@"updateAt"] integerValue];
//        self.Id = [[aDecoder decodeObjectForKey:@"Id"] integerValue];
//        self.idNumber = [aDecoder decodeObjectForKey:@"idNumber"];
//        self.securityStatus = [[aDecoder decodeObjectForKey:@"securityStatus"] integerValue];
//        self.iphone = [aDecoder decodeObjectForKey:@"iphone"];
//        self.createAt = [[aDecoder decodeObjectForKey:@"createAt"] longLongValue];
//        self.totalMileage = [[aDecoder decodeObjectForKey:@"totalMileage"] floatValue];
//        self.totalcyclingTime = [[aDecoder decodeObjectForKey:@"totalcyclingTime"] floatValue];
    }
    return self;
}

- (BOOL)persistence
{
    return [NSKeyedArchiver archiveRootObject:self toFile:[AppUser userArchiverPath]];
}

- (NSString *)userVideoPath
{
    NSString *path = [[self userDocumentPath] stringByAppendingPathComponent:@"shortVideo"];
    [AppUser createFilePath:path];
    return path;
}

// 用户路径
- (NSString *)userDocumentPath
{
    NSNumber *uid = [NSNumber numberWithInteger:0];
    NSString *path = [[AppUser documentPath] stringByAppendingPathComponent:[uid stringValue]];
    [AppUser createFilePath:path];
    return path;
}

+ (BOOL)createFilePath:(NSString *)path
{
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    if (![fileMgr fileExistsAtPath:path]) {
        NSError *error = nil;
        [fileMgr  createDirectoryAtPath:path
            withIntermediateDirectories:YES
                             attributes:nil
                                  error:&error];
        
        if (error) {
            return NO;
        }
    }
    return YES;
}

// 是否登录
- (BOOL)isLogin{
    if (1) {
        return YES;
    }
    return NO;
}

- (void)registerCookie
{
    //    NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    //    NSArray *keys = [NSArray arrayWithObjects:NSHTTPCookieDomain, NSHTTPCookieName, NSHTTPCookieValue, NSHTTPCookiePath, nil];
    //    NSArray *objects = [NSArray arrayWithObjects:@".renren.com", @"mt", [NSString stringWithFormat:@"%@", APPCONTEXT.currentUser.ticket], @"/", nil];
    //    NSDictionary *dict = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
    //
    //    NSHTTPCookie *cookie = [NSHTTPCookie cookieWithProperties:dict];
    //    [storage setCookie:cookie];
    //
    //    objects = [NSArray arrayWithObjects:@".renren.com", @"t", [NSString stringWithFormat:@"%@", APPCONTEXT.currentUser.web_ticket], @"/", nil];
    //    dict = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
    //    cookie = [NSHTTPCookie cookieWithProperties:dict];
    //    [storage setCookie:cookie];
    DebugLog(@"Cookies :%@", [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]);
}

// 主用户注销 Cookie
- (void)clearCookie {
    NSHTTPCookieStorage *cookieJar = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    for (NSHTTPCookie *cookie in [cookieJar cookies]) {
        [cookieJar deleteCookie:cookie];
    }
}

- (void)logout {
//    self.md5Token = @"";
//    self.userImg = @"";
//    self.realName = @"";
//    self.authenStatus = 0;
//    self.nationality = @"";
//    self.updateAt = 0;
//    self.Id = 0;
//    self.idNumber = @"";
//    self.securityStatus = 0;
//    self.iphone = @"";
//    self.createAt = 0;
//    self.amount = 0;
//    self.totalMileage = 0;
//    self.totalcyclingTime = 0;
//    
//    self.cycleNum = @"";
//    self.userLatitude = 0;
//    self.userLongtitude = 0;
//    self.deposit = 0;
//    self.photoImage = @"";
//    self.IDImage = @"";
//    self.accessToken = @"";
//    self.guid = @"";//就算退出登录 也不清除
    [self persistence];
}

@end


