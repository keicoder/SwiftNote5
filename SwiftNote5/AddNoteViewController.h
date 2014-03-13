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

//AddNoteViewControllerDelegate
@property (nonatomic, weak) id <AddNoteViewControllerDelegate> delegate;
@property (nonatomic, strong) Note *currentNote;

@end


#pragma mark - AddNoteViewControllerDelegate : AddView의 상태변경을 테이블 뷰에 알려주고 저장/취소/뷰 해제 등을 하기 위한 델리게이트 메소드

@protocol AddNoteViewControllerDelegate

-(void)addNoteViewControllerDidSave;
-(void)addNoteViewControllerDidCancel:(Note *)noteToDelete;

@end