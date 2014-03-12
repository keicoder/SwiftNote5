//
//  AddNoteViewController.h
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreViewController.h"
#import "Note.h"

@protocol AddNoteViewControllerDelegate;


@interface AddNoteViewController : CoreViewController <UITextViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *noteTitleTextField;
@property (strong, nonatomic) IBOutlet UITextView *noteTextView;

@property (nonatomic, weak) id <AddNoteViewControllerDelegate> delegate;
@property (nonatomic, strong) Note *currentNote;

@end

#pragma mark - AddNoteViewControllerDelegate : 컨텍스트의 저장/취소/모달 뷰 해제를 위한 델리게이트

@protocol AddNoteViewControllerDelegate

-(void)addNoteViewControllerDidSave;
-(void)addNoteViewControllerDidCancel:(Note *)noteToDelete;

@end