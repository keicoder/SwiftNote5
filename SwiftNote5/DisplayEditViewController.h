//
//  DisplayEditViewController.h
//  SwiftNote5
//
//  Created by jun on 2014. 3. 13..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreViewController.h"
#import "Note.h"


@interface DisplayEditViewController : CoreViewController

@property (nonatomic, strong) Note *currentNote;

@end
