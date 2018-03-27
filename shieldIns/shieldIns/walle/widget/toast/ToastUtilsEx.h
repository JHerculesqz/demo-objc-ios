//
//  ToastUtilsEx.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface ToastUtilsEx : NSObject
+(void)show:(NSString*)strMsg oView:(UIView*)oView;
+(void)hide:(MBProgressHUD*)oHud;
@end
