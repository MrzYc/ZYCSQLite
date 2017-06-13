//
//  ZYCSqliteModelTool.h
//  ZYCSQLite
//
//  Created by Circcus on 2017/6/13.
//  Copyright © 2017年 zhaoyongchuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYCModelProtocal.h"

@interface ZYCSqliteModelTool : NSObject

+ (BOOL)createTable:(Class)cls uid:(NSString *)uid;

@end
