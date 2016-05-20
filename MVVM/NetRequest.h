//
//  NetRequest.h
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    GET_REQUEST = 1,
    POST_REQUEST = 2,
} RequestMethod;



@interface NetRequest : NSObject
/**
 *  网络请求
 *
 *  @param method  请求方式
 *  @param urlStr  请求url
 *  @param params  请求参数
 *  @param success 请求成功之后的回调
 *  @param failure 请求失败之后的回调
 */
+ (void)requestWithMethod:(RequestMethod)method
                   urlStr:(NSString *)urlStr
                   params:(NSDictionary *)params
                  success:(void(^)(id responseData))success
                  failure:(void(^)(NSError *error))failure;

@end
