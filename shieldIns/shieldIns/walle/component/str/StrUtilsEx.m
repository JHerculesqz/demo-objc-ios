//
//  StrUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "StrUtilsEx.h"

@implementation StrUtilsEx
+(BOOL)isNullOrEmpty:(NSString *)strMsg{
    BOOL bRes = strMsg == nil || [strMsg isEqualToString:@""];
    return bRes;
}
@end
