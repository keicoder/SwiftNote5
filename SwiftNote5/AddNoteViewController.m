//
//  AddNoteViewController.m
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import "AddNoteViewController.h"

@interface AddNoteViewController () <UITextViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end



@implementation AddNoteViewController

@synthesize noteTitleTextField;
@synthesize noteTextView;



#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [super roundCorneredTextView:self.noteTextView]; // CoreViewController의 roundCorneredTextView 메소드로 테두리가 둥근 UITextView 만들기
}



#pragma mark - Memory Warning

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - Button Action Method: save나 cancel 버튼 click시 delegate method call

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    
    //remove the object
    [self.delegate addNoteViewControllerDidCancel:[self currentNote]];
}



- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    
    //save the context
    [self.currentNote setNoteTitle:noteTitleTextField.text];
    [self.currentNote setNoteBody:noteTextView.text];
    [self.delegate addNoteViewControllerDidSave];
}


@end
