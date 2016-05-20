//
//  NetRequest.m
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import "NetRequest.h"

//热门精选的接口需要appKey
#define HOT_APIKEY @"3aaf765647c4a7016067e8ad7eb35996"

@implementation NetRequest


+ (void)requestWithMethod:(RequestMethod)methodType
                   urlStr:(NSString *)urlStr
                   params:(NSDictionary *)params
                  success:(void(^)(id responseData))success
                  failure:(void(^)(NSError *error))failure{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //注意，为了使用demo接口方便，需在这里甚至appKey，在其他工程引用的时候需去掉
    [manager.requestSerializer setValue:HOT_APIKEY forHTTPHeaderField:@"apikey"];
    switch (methodType) {
        case GET_REQUEST:
        {
            [manager GET:urlStr parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                success(responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                failure(error);
            }];
        }
            break;
        case POST_REQUEST:
        {
            [manager POST:urlStr parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                success(responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                failure(error);
            }];
        }
            break;
        default:
            break;
    }
}

@end
