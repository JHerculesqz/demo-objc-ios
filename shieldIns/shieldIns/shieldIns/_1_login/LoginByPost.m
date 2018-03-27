//
//  LoginByPost.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LoginByPost.h"

@implementation LoginByPost
//#region Const

const BOOL WALLE_DEBUG_LOGINBYPOST = TRUE;

//#endregion

//#region loginByPost

-(LoginByPostOutVo *)loginByPost:(NSString *)strUser strPwd:(NSString *)strPwd{
    LoginByPostOutVo *oOutVo = [[LoginByPostOutVo alloc]init];
    
    if(WALLE_DEBUG_LOGINBYPOST){
        [LogUtilsEx debug:[NSString stringWithFormat:@"%@,%@",strUser,strPwd] strClazz:@"LoginByPost"];
        oOutVo.loginOK = YES;
        oOutVo.sessionId = @"DEBUG";
    }
    else{
        //TODO:post
    }
    
    return oOutVo;
}

//#endregion

//#region loginOK

-(void)loginOK:(UIViewController *)oUIViewController{
    [NavUtilsEx go:@"line2MainActivity" oSender:oUIViewController];
}

//#endregion
@end
