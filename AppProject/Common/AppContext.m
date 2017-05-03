//
//  AppContext.m
//  Project_iOS
//
//  Created by 刘旭 on 15/12/15.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#import "AppContext.h"

@interface AppContext ()

@end

static AppContext *_center = nil;

@implementation AppContext

+ (AppContext *)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _center = [[AppContext alloc]init];
    });
    return _center;
}

- (AppUser *)currentUser {
    if (!_currentUser) {
        _currentUser = [[AppUser alloc]init];
    }
    return _currentUser;
}

- (AppConfig *)config {
    if (!_config) {
        _config = [[AppConfig alloc]init];
    }
    return _config;
}

- (AppRequest *)appRequest {
    if (!_appRequest) {
        _appRequest = [[AppRequest alloc]init];
    }
    return _appRequest;
}

- (void)userLogout {
    [APPCONTEXT.currentUser logout];
//    [AppTabBarManager shareManager].tabbarViewController = nil;
}

@end
