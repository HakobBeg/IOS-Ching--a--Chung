//
//  PVCModeChooseViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "PVCModeChooseViewController.h"
#import "PVCGameStratingViewController.h"
#import "ChingaChung.h"

@interface PVCModeChooseViewController ()
- (IBAction)pvcModeBackAction:(id)sender;
- (IBAction)pvcChooseAction:(id)sender;
@property ChingaChung* game;
@property (weak, nonatomic) IBOutlet UILabel *playerChooseOutlet;
@property NSString* shot;
@property NSString *winCongrats;
@property BOOL lose;

@end

@implementation PVCModeChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _playerChooseOutlet.text=[_playerName stringByAppendingString:@" choose a shot!"];
    _game=[ChingaChung alloc];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pvcModeBackAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)pvcChooseAction:(id)sender {
    if([[[sender titleLabel] text] isEqualToString:@"Rock"])
        _shot=@"Rock";
    else if([[[sender titleLabel ]text]isEqualToString:@"Paper"])
        _shot=@"Paper";
    else
        _shot=@"Sissors";

    _game=[_game initWithPlayerName:_playerName playerShot:_shot];
   
    _winCongrats=[NSString stringWithFormat:@"%@ Your score is %i!",[_game vsPc],_game.first_player_wins];
    if([[_winCongrats substringToIndex:8] isEqualToString:@"You lose"]){
        _game.first_player_wins=0;
        _lose=YES;
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PVCGameStratingViewController * pgsVC=(PVCGameStratingViewController *)segue.destinationViewController;
    
    pgsVC.result=_winCongrats;
    pgsVC.player_name=_playerName;
    pgsVC.lose=_lose;

}
@end
