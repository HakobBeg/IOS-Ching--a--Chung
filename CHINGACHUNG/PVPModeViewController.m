//
//  PVPModeViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "PVPModeViewController.h"
#import "P1ShotChooseViewController.h"

@interface PVPModeViewController ()
- (IBAction)PVPModeBackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *p1Name;
@property (weak, nonatomic) IBOutlet UITextField *p2Name;

@end

@implementation PVPModeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    P1ShotChooseViewController * P1VC=(P1ShotChooseViewController *)segue.destinationViewController;
    P1VC.fp_name=_p1Name.text;
    P1VC.sp_name=_p2Name.text;
}

- (IBAction)PVPModeBackAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
