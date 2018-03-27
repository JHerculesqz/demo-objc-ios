//
//  ToastUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "ToastUtilsEx.h"

@implementation ToastUtilsEx
+(void)show:(NSString *)strMsg oView:(UIView*)oView{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:oView animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = strMsg;
    [self performSelector:@selector(hide:) withObject:hud afterDelay:2.0];
}
+(void)hide:(MBProgressHUD*)hud{
    [hud hideAnimated:YES];
}
@end
