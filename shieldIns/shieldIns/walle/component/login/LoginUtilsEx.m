//
//  LoginUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LoginUtilsEx.h"

@implementation LoginUtilsEx
//#region isLogin

+(void)isLogin:(NSString *)strFilePath4Login oUIViewController:(UIViewController *)oUIViewController oCallback:(id<IIsLoginByPost>)oCallback{
    //1.读取权限文件
    BOOL bIsLogin = NO;
    NSString *strSessionId = [FileUtilsEx read:strFilePath4Login];
    
    //2.如果没有读取到strSessionId,则登录失败
    if([StrUtilsEx isNullOrEmpty:strSessionId]){
        bIsLogin = NO;
    }
    //3.如果读取到strSessionId，则isLoginByPost(strSessionId)
    else{
        bIsLogin = [oCallback isLoginByPost:strSessionId];
    }
    
    //如果未登录，则跳转到登录页面
    if(!bIsLogin){
        [oCallback hasNotLogin:oUIViewController];
    }
    //如果登录，则正常显示MainActivity
    else{
        [oCallback hasLogin];
    }
}

//#endregion

//#region login

+(void)login:(NSString *)strFilePath4Login oView:(UIView *)oView strUser:(NSString *)strUser strPwd:(NSString *)strPwd oUIViewController:(UIViewController *)oUIViewController oCallback:(id<ILoginByPost>)oCallback{
    //1.loginByPost
    LoginByPostOutVo *oOutVo = [oCallback loginByPost:strUser strPwd:strPwd];
    [FileUtilsEx write:oOutVo.sessionId strFilePath:strFilePath4Login];
 
    //2.如果登录成功
    if (oOutVo.loginOK) {
        [oCallback loginOK:oUIViewController];
    }
    //3.如果登录失败
    else{
        [ToastUtilsEx show:@"登录失败..." oView:oView];
    }
}

//#endregion

//#region logout

+(void)logout:(NSString *)strFilePath4Login oUIViewController:(UIViewController *)oUIViewController oCallback:(id<ILogoutByPost>)oCallback{
    //1.清除Login文件
    [FileUtilsEx write:@"" strFilePath:strFilePath4Login];
    
    //2.go2LoginPage
    [oCallback go2LoginPage:oUIViewController];
    
    //3.logoutByPost
    [oCallback logoutByPost];
}

//#endregion
@end
