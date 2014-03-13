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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //noteTitleTextField.text = [self.currentNote noteTitle];
    //noteTextView.text = [self.currentNote noteBody];
    
    // CoreViewController의 roundCorneredTextView 메소드로 테두리가 둥근 UITextView 만들기
    [super roundCorneredTextView:self.noteTextView];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - 버튼 액션 메소드: Save나 Cancel 버튼을 탭했을 때 코어 데이터에 변경 사항 반영

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
