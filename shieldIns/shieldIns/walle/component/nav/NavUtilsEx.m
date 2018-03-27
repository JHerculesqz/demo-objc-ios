//
//  NavUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/23.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "NavUtilsEx.h"

@implementation NavUtilsEx

+(void)go:(NSString *)strLineName oSender:(UIViewController*)oSender{
    [oSender performSegueWithIdentifier:strLineName sender:oSender];
}

@end
