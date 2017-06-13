//
//  ZYCSQLiteTool.h
//  ZYCSQLite
//
//  Created by 赵永闯 on 2017/6/12.
//  Copyright © 2017年 zhaoyongchuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYCSQLiteTool : NSObject

+ (BOOL)deal:(NSString *)sql uid:(NSString *)uid;


//返回值是字典组成的数组
+ (NSMutableArray<NSMutableDictionary *>*)querySql:(NSString *)sql uid:(NSString *)uid;

@end
