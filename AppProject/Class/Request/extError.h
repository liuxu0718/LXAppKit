//
//  RRError.h
//  xiaonei
//
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface extError : NSError {
	
}

/**
 * 返回用于展现给用户的错误提示标题
 */
- (NSString*)titleForError;

/**
 * 返回由Rest接口错误信息构建的错误对象.
 */
+ (extError*)errorWithRestInfo:(NSDictionary*)restInfo;

/**
 * 返回由NSError构建的错误对象.
 */
+ (extError*)errorWithNSError:(NSError*)error;

/**
 * 构造RRError错误。
 *
 * @param code 错误代码
 * @param errorMessage 错误信息
 *
 * 返回错误对象.
 */
+ (extError*)errorWithCode:(NSInteger)code errorMessage:(NSString*)errorMessage;

/**
 * 返回调用Rest Api 的 method字段的值.
 */
- (NSString*)methodForRestApi;

+ (BOOL)isNeedLoginAgainError:(NSInteger)errCode;

@end
