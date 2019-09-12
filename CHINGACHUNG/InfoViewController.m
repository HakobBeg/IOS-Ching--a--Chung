//
//  InfoViewController.m
//  CHINGA - CHUNG
//
//  Created by Jarvis on 7/5/17.
//  Copyright © 2017 joomag. All rights reserved.
//

#import "InfoViewController.h"
#import "LeaderBoardManager.h"
@interface InfoViewController ()
- (IBAction)backButtonPressed:(id)sender;

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LeaderBoardManager *obj=[[LeaderBoardManager alloc]init];
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

- (IBAction)backButtonPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
