//
//  SetClubInfo.m
//  Prospects
//
//  Created by Colter Smith on 8/13/15.
//  Copyright (c) 2015 Colter Smith. All rights reserved.
//

#import "SetClubInfo.h"

@interface SetClubInfo ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *panelSwitcher;
@property (weak, nonatomic) IBOutlet UIView *firstPanel;
@property (weak, nonatomic) IBOutlet UIView *secondPanel;
@property (weak, nonatomic) IBOutlet UIView *thirdPanel;

@end

@implementation SetClubInfo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.secondPanel.hidden = YES;
    self.thirdPanel.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PanelSwitch:(id)sender {
    if(self.panelSwitcher.selectedSegmentIndex == 0){
        self.firstPanel.hidden = NO;
        self.secondPanel.hidden = YES;
        self.thirdPanel.hidden = YES;
    }
    if(self.panelSwitcher.selectedSegmentIndex == 1){
        self.firstPanel.hidden = YES;
        self.secondPanel.hidden = NO;
        self.thirdPanel.hidden = YES;
    }
    if(self.panelSwitcher.selectedSegmentIndex == 2){
        self.firstPanel.hidden = YES;
        self.secondPanel.hidden = YES;
        self.thirdPanel.hidden = NO;
    }
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
