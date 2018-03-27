//
//  FileUtilsEx.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileUtilsEx : NSObject
+(NSString*)read:(NSString*)strFilePath;
+(void)write:(NSString*)strContent strFilePath:(NSString*)strFilePath;
@end
