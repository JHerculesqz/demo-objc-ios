//
//  ILoginByPost.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginByPostOutVo.h"

@protocol ILoginByPost <NSObject>
-(LoginByPostOutVo*)loginByPost:(NSString*)strUser strPwd:(NSString*)strPwd;
-(void)loginOK:(UIViewController*)oUIViewController;
@end
