//
//  HotNewsModel.h
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotNewsModel : NSObject

@property(nonatomic,copy) NSString *ctime;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *desc;
@property(nonatomic,copy) NSString *picUrl;
@property(nonatomic,copy) NSString *url;


- (instancetype)initWithDict:(NSDictionary *)dict;

@end
