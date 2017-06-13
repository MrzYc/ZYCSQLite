//
//  ZYCSqliteModelTool.m
//  ZYCSQLite
//
//  Created by Circcus on 2017/6/13.
//  Copyright © 2017年 zhaoyongchuang. All rights reserved.
//

#import "ZYCSqliteModelTool.h"
#import "ZYCModelTool.h"
#import "ZYCSQLiteTool.h"

@implementation ZYCSqliteModelTool


+ (BOOL)createTable:(Class)cls uid:(NSString *)uid {
    
    //1. 获取表格名称
    NSString *tableName = [ZYCModelTool tabeleName:cls];
    if (![cls respondsToSelector:@selector(primaryKey)]) {
        NSLog(@"如果想要操作这个模型, 必须要实现+ (NSString *)primaryKey;这个方法, 来告诉主键信息");
        return NO;
    }
    
    NSString *primaryKey = [cls primaryKey];
    
    //2.获取模型里面所有的字段,已经类型
    NSString *createTableSql = [NSString stringWithFormat:@"create table if not exists %@(%@, primary key(%@))",tableName,[ZYCModelTool columnNamesAndTypesStr:cls], primaryKey];

    return [ZYCSQLiteTool deal:createTableSql uid:uid];
}

@end
