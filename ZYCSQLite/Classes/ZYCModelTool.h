//
//  ZYCModelTool.h
//  ZYCSQLite
//
//  Created by Circcus on 2017/6/13.
//  Copyright © 2017年 zhaoyongchuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYCModelTool : NSObject

+ (NSString *)tabeleName:(Class)cls;

//所有成员变量, 以及成员变量对应的类型
+ (NSDictionary *)classIvarNameTypeDic:(Class)cls;

//所有的成员变量,以及成员变量映射到数据库里面对应的类型
+ (NSDictionary *)classIvarNameSqliteTypeDic:(Class)cls;

+ (NSString *)columnNamesAndTypesStr:(Class)cls;



@end
