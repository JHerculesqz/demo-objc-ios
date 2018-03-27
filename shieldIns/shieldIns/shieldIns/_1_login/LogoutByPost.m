//
//  LogoutByPost.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LogoutByPost.h"

@implementation LogoutByPost
//#region Const

const BOOL DEBUG_LogoutByPost = YES;

//#endregion

//#region go2LoginPage

-(void)go2LoginPage:(UIViewController *)oUIViewController{
    [NavUtilsEx go:@"line2LoginActivity" oSender:oUIViewController];
}

//#endregion

//#region logoutByPost

-(void)logoutByPost{
    if(DEBUG_LogoutByPost){
        [LogUtilsEx debug:@"logoutByPost..." strClazz:@"LogoutByPost"];
    }
    else{
        //TODO:post
    }
}

//#endregion
@end
