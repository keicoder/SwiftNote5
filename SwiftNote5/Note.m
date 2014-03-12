//
//  Note.m
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import "Note.h"


@implementation Note

@dynamic noteTitle;
@dynamic noteBody;
@dynamic noteAll;
@dynamic noteCreatedDate;
@dynamic noteModifiedDate;
@dynamic image;
@dynamic imageName;
@dynamic imageCreatedDate;
@dynamic imageUId;
@dynamic noteAnnotate;
@dynamic hasImage;
@dynamic hasNoteAnnotate;
@dynamic hasNoteStar;
@dynamic noteSection;



//invoked automatically by the Core Data framework when the receiver is first inserted into a managed object context.
//typically use this method to initialize special default property values.
//this method is invoked only once in the object's lifetime.
-(void) awakeFromInsert {
    [super awakeFromInsert];
    self.noteModifiedDate = [NSDate date];
}

@end
