//
//  PVCModeViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "PVCModeViewController.h"
#import "PVCModeChooseViewController.h"

@interface PVCModeViewController ()
- (IBAction)pvcModeBackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *pvcPlayerName;

@end

@implementation PVCModeViewController

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

- (IBAction)pvcModeBackAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PVCModeChooseViewController * pmcVC=(PVCModeChooseViewController *)segue.destinationViewController;
    pmcVC.playerName=_pvcPlayerName.text;
}

@end
