//
//  CoreViewController.m
//  SwiftNote2
//
//  Created by lovejun on 2013. 9. 15..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import "CoreViewController.h"


@interface CoreViewController ()

@end

@implementation CoreViewController



#pragma mark - 뷰 라이프 사이클

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - 뷰에서 Cancel, Save 버튼 등 특정 버튼을 눌렀을 때 뷰를 해제하기 위한 메소드.

- (IBAction)dismissView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        // 이 코드 블럭에 집어넣는 코드는 뷰 컨트롤러가 사라진 후 실행된다.
        // 오브젝티브 C 에서 블록은 변수처럼 넘겨줄 수 있는 코드 영역임.
        NSLog(@"View done dismissing");
        NSLog(@"Dismiss Complete!");
    }];
}


#pragma mark - 테두리가 둥근 UITextView 만들기 : QuartzCore 프레임워크

- (void)roundCorneredTextView:(UITextView *)textView
{
    // 테두리가 둥근 UITextView 만들기
    textView.layer.cornerRadius = 10;
    textView.clipsToBounds = YES;
}


@end
