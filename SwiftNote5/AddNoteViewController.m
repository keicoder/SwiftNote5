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
    
    self.noteTitleTextField.text = [self.currentNote noteTitle];
    self.noteTextView.text = [self.currentNote noteBody];
    
    // CoreViewController의 roundCorneredTextView 메소드로 테두리가 둥근 UITextView 만들기
    [super roundCorneredTextView:self.noteTextView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    
    // dismiss and remove the object
    [self.delegate addNoteViewControllerDidCancel:[self currentNote]];
    
    [super dismissView:sender];
    
    //    [self dismissViewControllerAnimated:YES completion:^{
    //        NSLog(@"Dismissing View");
    //        NSLog(@"View done dismissing");
    //    }];
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    
    // dismiss and save the context
    [self.currentNote setNoteTitle:self.noteTextView.text];
    [self.currentNote setNoteBody:self.noteTextView.text];
    
    [self.delegate addNoteViewControllerDidSave];
    
    [super dismissView:sender];
    
    //    [self dismissViewControllerAnimated:YES completion:^{
    //        NSLog(@"Dismissing View");
    //        NSLog(@"View done dismissing");
    //    }];
}


@end
