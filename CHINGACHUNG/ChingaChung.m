//
//  ChingaChung.m
//  CHINGA - CHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "ChingaChung.h"
#import "time.h"

@implementation ChingaChung

@synthesize first_player_wins=first_player_wins;
@synthesize second_player_wins=second_player_wins;


-(instancetype)initWithPlayerName:(NSString *)pName playerShot:(NSString *)pShot
{
    first_player_name=pName;
    if([pShot isEqualToString:@"Rock"])
        first_player_shot=Rock;
    else
        first_player_shot=([pShot isEqualToString:@"Paper"]?Paper:Scissors);
    
    second_player_name=@"PC";
    
   
    
    return self;

}

-(instancetype)initWithFpNAme:(NSString *)fName spName:(NSString *)sName fpShot:(NSString *)fpShot spShot:(NSString *)spShot
{
    first_player_name=[NSString stringWithString:fName];
    second_player_name=[NSString stringWithString:sName];
    if([fpShot isEqualToString:@"Rock"])
        first_player_shot=Rock;
    else
        first_player_shot=([fpShot isEqualToString:@"Paper"]?Paper:Scissors);
    
    if([spShot isEqualToString:@"Rock"])
        second_player_shot=Rock;
    else
        second_player_shot=([spShot isEqualToString:@"Paper"]?Paper:Scissors);
    
    first_player_wins=0;
    second_player_wins=0;
    
    return self;
}

-(instancetype)initWithFpNAme:(NSString *)fName spName:(NSString *)sName fpShot:(NSString *)fShot spShot:(NSString *)spShot firswins:(int)fw secwins:(int)sw
{
    first_player_name=[NSString stringWithString:fName];
    second_player_name=[NSString stringWithString:sName];
    if([fShot isEqualToString:@"Rock"])
        first_player_shot=Rock;
    else
        first_player_shot=([fShot isEqualToString:@"Paper"]?Paper:Scissors);
    
    if([spShot isEqualToString:@"Rock"])
        second_player_shot=Rock;
    else
        second_player_shot=([spShot isEqualToString:@"Paper"]?Paper:Scissors);
    
    first_player_wins=fw;
    second_player_wins=sw;
    
    return self;
}

-(NSString *)winner
{
    
    
    if(first_player_shot==Rock && second_player_shot==Scissors)
    {
        first_player_wins++;
        return first_player_name;
    }
    if(first_player_shot==Rock && second_player_shot==Paper)
    {
        second_player_wins++;
        return second_player_name;
    }
    if(first_player_shot==Scissors && second_player_shot==Rock)
    {
        second_player_wins++;
        return second_player_name;
    }
    if(first_player_shot==Scissors && second_player_shot==Paper)
    {
        first_player_wins++;
        return first_player_name;
    }
    if(first_player_shot==Paper && second_player_shot==Rock)
    {
        first_player_wins++;
        return first_player_name;
    }
    if(first_player_shot==Paper && second_player_shot==Scissors)
    {
        second_player_wins++;
        return second_player_name;
    }
    return @"DRAW!";
}

-(NSString*)vsPc
{

    time_t t;
    srand((unsigned)time(&t));
    
    second_player_shot=(rand() % (4));
    
    NSString * winner=[self winner];
    if([winner isEqualToString:first_player_name]){
        return @"You win!";
    }
    else{
        return @"You lose";
    }
    }

-(void)changeFpShot:(shot)new_shot
{
    first_player_shot=new_shot;
}

-(void)changeSpShot:(shot)new_shot
{
    second_player_shot=new_shot;
}

@end
