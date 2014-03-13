//
//  DisplayEditViewController.m
//  SwiftNote5
//
//  Created by jun on 2014. 3. 13..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"  //saveContext 메소드 호출


@interface DisplayEditViewController ()

@property (strong, nonatomic) IBOutlet UITextField *noteTitleTextField;
@property (strong, nonatomic) IBOutlet UITextView *noteTextView;

@end



@implementation DisplayEditViewController


#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    if (debug==1) {NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));}
    
    [super viewDidLoad];
    
    self.noteTitleTextField.text = [self.currentNote noteTitle];
    self.noteTextView.text = [self.currentNote noteBody];
    
    // CoreViewController의 roundCorneredTextView 메소드로 테두리가 둥근 UITextView 만들기
    [super roundCorneredTextView:self.noteTextView];
}



#pragma mark - Bar Button Action Method: 컨텍스트 저장, 뷰 pop

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender
{
    _currentNote.noteTitle = self.noteTitleTextField.text;
    _currentNote.noteBody = self.noteTextView.text;
    
    AppDelegate *myAppDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [myAppDelegate saveContext];
    
    [self.navigationController popViewControllerAnimated:YES];
}



#pragma mark - Memory Warning

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
