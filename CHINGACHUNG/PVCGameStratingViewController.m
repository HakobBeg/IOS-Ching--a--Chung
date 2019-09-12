//
//  PVCGameStratingViewController.m
//  CHINGACHUNG
//
//  Created by Jarvis on 7/6/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "PVCGameStratingViewController.h"
#import "PVCModeChooseViewController.h"
#import "ChingaChung.h"


@interface PVCGameStratingViewController ()
@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)playAgainAction:(id)sender;
@property BOOL isLose;


@end

@implementation PVCGameStratingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _winnerLabel.text=_result;
    
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

- (IBAction)playAgainAction:(id)sender {

    [self.navigationController popViewControllerAnimated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PVCModeChooseViewController * pvcVC=(PVCModeChooseViewController *)segue.destinationViewController;
        pvcVC.resetScore=_isLose;
}
@end
