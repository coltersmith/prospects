//
//  SetClubInfo.m
//  Prospects
//
//  Created by Colter Smith on 8/13/15.
//  Copyright (c) 2015 Colter Smith. All rights reserved.
//

#import "SetClubInfo.h"
#import <Parse/Parse.h>
@interface SetClubInfo ()
{
    NSArray *_clubPickerData;
    NSArray *_clubOnPickerData;
}
@property (weak, nonatomic) IBOutlet UISegmentedControl *panelSwitcher;
@property (weak, nonatomic) IBOutlet UIView *firstPanel;
@property (weak, nonatomic) IBOutlet UIView *secondPanel;
@property (weak, nonatomic) IBOutlet UIView *thirdPanel;
@property (weak, nonatomic) IBOutlet UIPickerView *clubOnPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *clubPicker;


@end

@implementation SetClubInfo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
    /*
    // Parse testing code:
    
    PFObject *anObject = [PFObject objectWithClassName:@"AnObject"];
    anObject[@"categorybigman"] = @"Colter DeLuca";
    [anObject saveInBackground];
    
    
    //
    */
    
    self.secondPanel.hidden = YES;
    self.thirdPanel.hidden = YES;
    
    // Initialize Data
    _clubPickerData = @[@"Cap", @"Tower", @"TI", @"Ivy", @"Quad", @"Cannon", @"Terrace", @"Colonial", @"Charter", @"Cloister", @"Cottage"];
    
    _clubOnPickerData = @[@"PUID", @"Pass", @"List", @"Members Only"];
    
    // Connect data to picker views
    self.clubPicker.dataSource = self;
    self.clubPicker.delegate = self;
    self.clubOnPicker.dataSource = self;
    self.clubOnPicker.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}



// The number of columns of data in picker view
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data in picker view
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView == _clubPicker){
        return _clubPickerData.count;
    }
    else return _clubOnPickerData.count;
}

// The data to return for the row and component (column) that's being passed in to picker view
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView == _clubPicker)
        return _clubPickerData[row];
    else return _clubOnPickerData[row];
}

//handles switching between panels
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

//The Parse stuff [basically how to send data]

- (IBAction)SendInfo:(id)sender {
    
    
    PFObject *clubInfo = [PFObject objectWithClassName:@"ClubInfo"];
    clubInfo[@"clubName"] = @"Cap";
    clubInfo[@"whatItsOn"] = @"Pass";
    clubInfo[@"whenOpen"] = @"Now";
    clubInfo[@"passDescription"] = @"Yellow";
    clubInfo[@"theme"] = @"None";
    
    [clubInfo saveInBackground];
    
    // saving in background sends to parse cloud
    
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
