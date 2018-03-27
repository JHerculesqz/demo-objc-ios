//
//  LoginUtilsEx.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IIsLoginByPost.h"
#import "ILogoutByPost.h"
#import "ILoginByPost.h"
#import "LoginByPostOutVo.h"
#import "ToastUtilsEx.h"
#import "FileUtilsEx.h"
#import "StrUtilsEx.h"

@interface LoginUtilsEx : NSObject
+(void)isLogin:(NSString*)strFilePath4Login oUIViewController:(UIViewController*)oUIViewController oCallback:(id<IIsLoginByPost>)oCallback;
+(void)login:(NSString*)strFilePath4Login oView:(UIView*)oView strUser:(NSString*)strUser strPwd:(NSString*)strPwd oUIViewController:(UIViewController*)oUIViewController oCallback:(id<ILoginByPost>)oCallback; 
+(void)logout:(NSString*)strFilePath4Login oUIViewController:(UIViewController*)oUIViewController oCallback:(id<ILogoutByPost>)oCallback;
@end
