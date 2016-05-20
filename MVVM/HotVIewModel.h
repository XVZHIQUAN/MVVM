//
//  HotVIewModel.h
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotVIewModel : NSObject

+ (void)getDataWithSuccess:(void(^)(NSArray *dataArray))success
                  withFailure:(void(^)(NSError *error))failure;

@end
