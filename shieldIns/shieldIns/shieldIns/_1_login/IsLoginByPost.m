//
//  IsLoginByPost.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "IsLoginByPost.h"

@implementation IsLoginByPost
//#region Const

const BOOL DEBUG_IsLoginByPost = TRUE;

//#endregion

-(BOOL)isLoginByPost:(NSString *)strSessionId{
    if(DEBUG_IsLoginByPost){
        [LogUtilsEx debug:@"isLoginByPost..." strClazz:@"IsLoginByPost"];
        return YES;
    }
    else{
        //TODO:post
        return YES;
    }
}
-(void)hasLogin{

}
-(void)hasNotLogin:(UIViewController *)oUIViewController{
    [NavUtilsEx go:@"line2LoginActivity" oSender:oUIViewController];
}
@end

