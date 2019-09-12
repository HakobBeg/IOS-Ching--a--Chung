//
//  P1ShotChooseViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "P1ShotChooseViewController.h"
#import "P2ShotChooseViewController.h"

@interface P1ShotChooseViewController ()


@property (weak, nonatomic) IBOutlet UILabel *firstShooter;

- (IBAction)P1ChooseBackAvtion:(id)sender;
- (IBAction)shotChoosed:(id)sender;


@property NSString* fp_shot;
@end

@implementation P1ShotChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _firstShooter.text=[_fp_name stringByAppendingString:@" choose a shot!"];
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

- (IBAction)P1ChooseBackAvtion:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)shotChoosed:(id)sender {
    if([[[sender titleLabel] text] isEqualToString:@"Rock"])
        _fp_shot=@"Rock";
    else if([[[sender titleLabel ]text]isEqualToString:@"Paper"])
        _fp_shot=@"Paper";
    else
        _fp_shot=@"Sissors";
    
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    P2ShotChooseViewController *P2CVC=(P2ShotChooseViewController *)segue.destinationViewController;
    
    P2CVC.fpName=_fp_name;
    P2CVC.spName=_sp_name;
    P2CVC.fpShot=_fp_shot;
}
@end
