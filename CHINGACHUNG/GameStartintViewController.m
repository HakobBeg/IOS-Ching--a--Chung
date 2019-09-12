//
//  GameStartintViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "GameStartintViewController.h"
#import "P2ShotChooseViewController.h"
#import "ChingaChung.h"

@interface GameStartintViewController ()
@property (weak, nonatomic) IBOutlet UILabel *winnerLabelOutlet;

- (IBAction)finalBackAction:(id)sender;

- (IBAction)playAgainAction:(id)sender;
@property(nonatomic) ChingaChung * logic;
@end

@implementation GameStartintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(_fpname.length==0)
        _fpname=@"Player 1";
    if(_spname.length==0)
        _spname=@"Player 2";
    _logic=[[ChingaChung alloc] initWithFpNAme:_fpname spName:_spname fpShot:_fpshot spShot:_spshot];
    NSString * a=[_logic winner];
    if([a isEqualToString:@"DRAW!"])
        _winnerLabelOutlet.text=[a stringByAppendingString:@" Tap below me to play again, tap over me to back to startpage."];
    else
    _winnerLabelOutlet.text=[a stringByAppendingString:@" wins!Tap below me to play again, tap over me to back to startpage."];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    
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


- (IBAction)finalBackAction:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)playAgainAction:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:3] animated:YES];
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    P2ShotChooseViewController *P2VCV=(P2ShotChooseViewController *)segue.destinationViewController;
    P2VCV.replay=YES;
}

@end
