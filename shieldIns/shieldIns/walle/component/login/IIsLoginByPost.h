//
//  IIsLoginByPost.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol IIsLoginByPost <NSObject>
-(BOOL)isLoginByPost:(NSString*)strSessionId;
-(void)hasLogin;
-(void)hasNotLogin:(UIViewController*)oUIViewController;
@end
