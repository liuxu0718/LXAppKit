//
//  AppContext.h
//  Project_iOS
//
//  Created by 刘旭 on 15/12/15.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#define APPCONTEXT [AppContext shareInstance]

#import <Foundation/Foundation.h>
#import "AppUser.h"
#import "AppConfig.h"
#import "AppRequest.h"

@interface AppContext : NSObject

@property (nonatomic, strong) AppUser *currentUser;
@property (nonatomic, strong) AppConfig *config;
@property (nonatomic, strong) AppRequest *appRequest;

+ (AppContext *)shareInstance;

- (void)userLogout;

//- (void)loginChat;

@end
