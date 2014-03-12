//
//  CoreViewController.h
//  SwiftNote2
//
//  Created by lovejun on 2013. 9. 15..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h> // 테두리가 둥근 UITextView 만들기

@interface CoreViewController : UIViewController

// UIViewController의 코어 뷰 컨트롤러 클래스 생성
// —> 공통 메소드와 속성 추가
// —> 나머지 뷰 컨트롤러 클래스는 코어 뷰 컨트롤러 클래스를 상속하여 공통 메소드와 속성 자동 상속/구현할 수 있음.

#pragma mark - 뷰에서 Cancel, Save 버튼 등 특정 버튼을 눌렀을 때 뷰를 해제하기 위한 메소드.

- (IBAction)dismissView:(id)sender;

#pragma mark - 테두리가 둥근 UITextView 만들기

- (void)roundCorneredTextView:(UITextView *)textView;

@end
