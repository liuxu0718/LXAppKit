//
//  BaseRequest.m
//  ZSChineseMedicine
//
//  Created by 美时美刻－01 on 16/8/2.
//  Copyright © 2016年 Liuxu. All rights reserved.
//


#import "BaseRequest.h"
#import "AFNetworking.h"

@interface BaseRequest ()

@end

@implementation BaseRequest

- (void)sendRequestWithMethod:(NSString *)method
                          Url:(NSString *)url
                 RequestParam:(NSDictionary *)requestParam
                     Complete:(AppRequstComplete)complete {
    
    if ((method == nil) || (method.length == 0)) {
        if (complete != nil) {
            extError *error = [extError errorWithCode:0 errorMessage:@"method nil"];
            complete(false, 0, nil, error);
        }
        return;
    }
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"application/json", @"text/html", nil];
    manager.requestSerializer.timeoutInterval = 20;
    NSString *fullUrl = [NSString stringWithFormat:@"%@%@", APPCONTEXT.config.mApiUrl, url];
    DebugLog(@"\n请求接口：%@\n请求的参数：%@\n", fullUrl, requestParam);
    if ([method isEqualToString:@"POST"]) {
        [manager POST:fullUrl parameters:requestParam progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (!responseObject) {
                return;
            }
            NSDictionary *json = nil;
            if ([responseObject isKindOfClass:[NSArray class]]) {
                json = @{@"array" : responseObject};
            } else if ([responseObject isKindOfClass:[NSString class]]) {
                json = @{@"string" : responseObject};
            } else if ([responseObject isKindOfClass:[NSDictionary class]]) {
                json = [NSDictionary dictionaryWithDictionary:responseObject];
            }
            
            if (json && json.count > 0) {
                complete(true, AppRequestSuccess, json, nil);
            } else {
                //接口数据为空
                DebugLog(@"\n请求接口：%@\n接口数据为空", fullUrl);
                complete(true, AppRequestSuccess, @{}, nil);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            DebugLog(@"\n网络错误，请求的错误提示：%@\n", error);
            if (complete != nil) {
                extError *e = [extError errorWithNSError:error];
                complete(false, AppRequestConnectError, nil, e);
            }
        }];
    } else {
        [manager GET:fullUrl parameters:requestParam progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (!responseObject) {
                return;
            }
            NSDictionary *json = nil;
            if ([responseObject isKindOfClass:[NSArray class]]) {
                json = @{@"array" : responseObject};
            } else if ([responseObject isKindOfClass:[NSString class]]) {
                json = @{@"string" : responseObject};
            } else if ([responseObject isKindOfClass:[NSDictionary class]]) {
                json = [NSDictionary dictionaryWithDictionary:responseObject];
            }
            
            if (json && json.count > 0) {
                complete(true, AppRequestSuccess, json, nil);
            } else {
                //接口数据为空
                DebugLog(@"\n请求接口：%@\n接口数据为空", fullUrl);
                complete(true, AppRequestSuccess, @{}, nil);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            DebugLog(@"\n网络错误，请求的错误提示：%@\n", error);
            if (complete != nil) {
                extError *e = [extError errorWithNSError:error];
                complete(false, AppRequestConnectError, nil, e);
            }
        }];
    }
}

@end
