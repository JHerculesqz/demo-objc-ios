//
//  FileUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "FileUtilsEx.h"

@implementation FileUtilsEx
+(NSString *)read:(NSString *)strFilePath{
    //1.获得沙盒的doc路径
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    //2.获得完整的文件路径
    NSString *txtPath = [docPath stringByAppendingPathComponent:strFilePath];
    
    //3.读取文件内容
    NSString *resultStr = [NSString stringWithContentsOfFile:txtPath encoding:NSUTF8StringEncoding error:nil];
    
    return resultStr;
}

+(void)write:(NSString *)strContent strFilePath:(NSString *)strFilePath{
    //1.获得沙盒的doc路径
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    //2.获得完整的文件路径
    NSString *txtPath = [docPath stringByAppendingPathComponent:strFilePath];
 
    //3.写入文件内容
    [strContent writeToFile:txtPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end
