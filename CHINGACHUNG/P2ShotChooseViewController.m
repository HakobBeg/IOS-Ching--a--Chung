//
//  P2ShotChooseViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "P2ShotChooseViewController.h"
#import "P1ShotChooseViewController.h"
#import "GameStartintViewController.h"
@interface P2ShotChooseViewController ()
- (IBAction)p2ShootChooseBackAction:(id)sender;
- (IBAction)p2ShotChoosedAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *secondShooter;
@property NSString *sp_shot;
@end

@implementation P2ShotChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _secondShooter.text=[_spName stringByAppendingString:@" choose a shot!"];

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

- (IBAction)p2ShootChooseBackAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)p2ShotChoosedAction:(id)sender {
    if([[[sender titleLabel] text] isEqualToString:@"Rock"])
        _sp_shot=@"Rock";
    else if([[[sender titleLabel ]text]isEqualToString:@"Paper"])
        _sp_shot=@"Paper";
    else
        _sp_shot=@"Sissors";

    if(_replay)
        [self.navigationController popViewControllerAnimated:YES];
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    GameStartintViewController * GSVC=(GameStartintViewController *)segue.destinationViewController;
    
    GSVC.fpname=_fpName;
    GSVC.spname=_spName;
    GSVC.fpshot=_fpShot;
    GSVC.spshot=_sp_shot;
}
@end
