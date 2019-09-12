//
//  ChingaChung.h
//  CHINGA - CHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {Rock,Scissors,Paper}shot;



@interface ChingaChung : NSObject

{
    shot first_player_shot;
    shot second_player_shot;
    NSString *first_player_name;
    NSString *second_player_name;
    
    
}
-(instancetype)initWithPlayerName:(NSString *)pName playerShot:(NSString *)pShot;
-(instancetype)initWithFpNAme:(NSString *)fName spName:(NSString *)sName fpShot:(NSString *)fShot spShot:(NSString *)spShot;
-(instancetype)initWithFpNAme:(NSString *)fName spName:(NSString *)sName fpShot:(NSString *)fShot spShot:(NSString *)spShot firswins:(int)fw secwins:(int)sw;
-(NSString *)winner;
-(NSString *)vsPc;
-(void)changeFpShot:(shot)new_shot;
-(void)changeSpShot:(shot)new_shot;

@property(nonatomic) int first_player_wins;
@property(nonatomic) int second_player_wins;


@end
