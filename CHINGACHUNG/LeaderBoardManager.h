//
//  LeaderBoardManager.h
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeaderBoardManager : NSObject

{
    NSString *filePath;
    NSMutableDictionary * lBoard;
}

+(instancetype )sharedInstance;
-(instancetype)init;
-(void)saveScore:(NSString*)new_score;
-(NSMutableDictionary *)loadScore;


@end
