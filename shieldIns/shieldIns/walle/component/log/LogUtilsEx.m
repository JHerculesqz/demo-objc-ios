//
//  LogUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LogUtilsEx.h"

@implementation LogUtilsEx
+(void)debug:(NSString *)strMsg strClazz:(NSString *)strClazz{
    NSLog(@"[%@]%@", strClazz, strMsg);
}
@end
