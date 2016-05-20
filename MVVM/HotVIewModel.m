//
//  HotVIewModel.m
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import "HotVIewModel.h"

#import "HotNewsModel.h"

@implementation HotVIewModel

+ (void)getDataWithSuccess:(void(^)(NSArray *dataArray))success
                  withFailure:(void(^)(NSError *error))failure{
    NSMutableDictionary *mParams = [NSMutableDictionary dictionary];
    [mParams setObject:[NSString stringWithFormat:@"%d",10] forKey:@"num"];
    [mParams setObject:[NSString stringWithFormat:@"%d",1] forKey:@"rand"];
    [mParams setObject:[NSString stringWithFormat:@"%d",1] forKey:@"page"];
    [NetRequest requestWithMethod:GET_REQUEST urlStr:HOT_TOPIC_URL params:mParams success:^(id responseData) {
        
        NSMutableArray *mArr = [[NSMutableArray alloc]init];
        for (NSDictionary *dict in responseData[@"newslist"]) {
            [mArr addObject:[[HotNewsModel alloc] initWithDict:dict]];
        }
        success(mArr);
        
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
