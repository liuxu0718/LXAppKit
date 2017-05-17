//
//  BaseRequest.h
//  ZSChineseMedicine
//
//  Created by 美时美刻－01 on 16/8/2.
//  Copyright © 2016年 Liuxu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "extError.h"

typedef void(^AppRequstComplete)(BOOL isSuccess, NSInteger code, NSDictionary *info, extError *errorMsg);

@interface BaseRequest : NSObject

- (void)sendRequestWithMethod:(NSString *)method
                          Url:(NSString *)url
                 RequestParam:(NSDictionary *)requestParam
                     Complete:(AppRequstComplete)complete;

@end
