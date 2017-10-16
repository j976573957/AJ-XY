//
//  main.m
//  Method
//
//  Created by Loovee on 2017/10/11.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import <Foundation/Foundation.h>

void fangfaming(){
    
    NSArray *LeiXinArr = [NSArray arrayWithObjects:@"-(NSString*)",@"-(NSInteger)",@"-(id)",@"-(void)",@"-(float)", nil];
    NSArray *CanShuArr = [NSArray arrayWithObjects:@"(NSString*)",@"(NSInteger)",@"(id)",@"(float)",nil];
    NSString *pppp = @"";
    for (NSInteger i=0; i < 1000; i++) {
        
        int FanHuiLeiXin = arc4random() % LeiXinArr.count;
        NSString *fhlxStr = LeiXinArr[FanHuiLeiXin];//返回类型
        
        NSString *HanShuStr = @"";//函数名
        int HanShuArc = arc4random() % 20;//参数数量
        for (NSInteger i = 0; i < HanShuArc+10; i++) {
            int figure = (arc4random() % 26) + 97;
            char character = figure;
            NSString *tempString = [NSString stringWithFormat:@"%c", character];//随机字母
            HanShuStr = [HanShuStr stringByAppendingString:tempString];
        }
        
        NSString *canshuStr = @"";
        int CanShu = arc4random() % 3;//参数数量
        for (NSInteger i=0; i < CanShu; i++) {
            int canshuleixing = arc4random() % CanShuArr.count;//参数类型
            int canshumingchangdu = arc4random() % 8;//参数名长度
            NSString *can12 = @"";
            for (NSInteger i=0; i < canshumingchangdu+4; i++) {
                int figure = (arc4random() % 26) + 97;
                char character = figure;
                NSString *tempString = [NSString stringWithFormat:@"%c", character];//随机字母
                can12 = [can12 stringByAppendingString:tempString];
            }
            NSString *canStr = [NSString stringWithFormat:@"%@:%@%@ ",can12,CanShuArr[canshuleixing],can12];
            canshuStr = [canshuStr stringByAppendingString:canStr];
        }
        
        NSString *fanhuizhi = @"";
        if([fhlxStr isEqualToString:@"-(id)"]){
            fanhuizhi = @"return nil;";
        }else if ([fhlxStr isEqualToString:@"-(NSString*)"]){
            fanhuizhi = [NSString stringWithFormat:@"return @"@"\"%@""\";",HanShuStr];
        }else if ([fhlxStr isEqualToString:@"-(NSInteger)"] || [fhlxStr isEqualToString:@"-(float)"]){
            int FHsuijishu = arc4random() % 1000;
            fanhuizhi = [NSString stringWithFormat:@"return %d;",FHsuijishu];//@"return 321;";
        }
        
        NSString *zhushi = @"\n//";
        int zhushiArc = arc4random() % 20;
        for (NSInteger i=0; i < zhushiArc+8; i++) {
            NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
            NSInteger randomH = 0xA1+arc4random()%(0xFE - 0xA1+1);
            NSInteger randomL = 0xB0+arc4random()%(0xF7 - 0xB0+1);
            NSInteger number = (randomH<<8)+randomL;
            NSData *data = [NSData dataWithBytes:&number length:2];
            NSString *string = [[NSString alloc] initWithData:data encoding:gbkEncoding];
            zhushi = [zhushi stringByAppendingString:string];
        }
        
        NSString *str = [NSString stringWithFormat:@"%@\n%@DMLV%@%@{\n%@}\n",zhushi,fhlxStr,HanShuStr,canshuStr,fanhuizhi];
        pppp = [pppp stringByAppendingString:str];
    }
    NSLog(@"%@",pppp);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        fangfaming();
    }
    return 0;
}
