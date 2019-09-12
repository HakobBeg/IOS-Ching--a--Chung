//
//  LeaderBoardManager.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "LeaderBoardManager.h"

@implementation LeaderBoardManager

+ (instancetype)sharedInstance {
    static LeaderBoardManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

-(instancetype)init
{
    filePath = [[NSBundle mainBundle] pathForResource:@"list" ofType:@"plist"];
    lBoard = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"%@",lBoard);
    return self;
}

-(void)saveScore:(NSString *)new_score
{
    
}


@end
