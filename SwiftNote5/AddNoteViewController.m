//
//  AddNoteViewController.m
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import "AddNoteViewController.h"

@interface AddNoteViewController ()
@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddNoteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dismissing View");
        NSLog(@"View done dismissing");
    }];
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dismissing View");
        NSLog(@"View done dismissing");
    }];
}

@end
