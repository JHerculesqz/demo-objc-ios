//
//  LoginByPostOutVo.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginByPostOutVo : NSObject{
    BOOL loginOK;
    NSString *sessionId;
}
@property BOOL loginOK;
@property NSString *sessionId;
@end
