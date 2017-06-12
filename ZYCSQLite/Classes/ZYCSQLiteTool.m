//
//  ZYCSQLiteTool.m
//  ZYCSQLite
//
//  Created by 赵永闯 on 2017/6/12.
//  Copyright © 2017年 zhaoyongchuang. All rights reserved.
//

#import "ZYCSQLiteTool.h"
#import <sqlite3.h>


#define kCachePath NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject


@implementation ZYCSQLiteTool

sqlite3 *ppDb = nil;

+ (BOOL)deal:(NSString *)sql uid:(NSString *)uid {
    //1.打开创建一个数据库
  
    
    //2.执行语句
    
    //3.关闭数据库
    
    return YES;
}

@end
