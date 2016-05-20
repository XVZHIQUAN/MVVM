//
//  HotNewsModel.m
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import "HotNewsModel.h"

@implementation HotNewsModel

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        _ctime = dict[@"ctime"];
        _title = dict[@"title"];
        _desc = dict[@"desc"];
        _picUrl = dict[@"picUrl"];
        _url = dict[@"url"];
    }
    return self;
}

@end
