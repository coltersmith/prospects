//
//  ClubsList.m
//  Prospects
//
//  Created by Colter Smith on 8/12/15.
//  Copyright (c) 2015 Colter Smith. All rights reserved.
//

#import "ClubsList.h"
#import "ViewController.h"

@interface ClubsList ()
@property (weak, nonatomic) IBOutlet UIView *Cap;

@end

@implementation ClubsList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*UITapGestureRecognizer *gesRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]; // Declare the Gesture.
    gesRecognizer.delegate = self;
    [_Cap addGestureRecognizer:gesRecognizer]; // Add Gesture to your view.*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Gesture Recognizer handler method.

/*- (void)handleTap:(UITapGestureRecognizer *)gestureRecognizer{
    //NSLog(@"Tapped");

    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *viewController = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"CapCont"];
    [self presentViewController:viewController animated:YES completion:nil];
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
