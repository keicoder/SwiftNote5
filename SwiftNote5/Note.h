//
//  Note.h
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Note : NSManagedObject

@property (nonatomic, retain) NSString * noteTitle;
@property (nonatomic, retain) NSString * noteBody;
@property (nonatomic, retain) NSString * noteAll;
@property (nonatomic, retain) NSDate * noteCreatedDate;
@property (nonatomic, retain) NSDate * noteModifiedDate;
@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSString * imageName;
@property (nonatomic, retain) NSDate * imageCreatedDate;
@property (nonatomic, retain) NSNumber * imageUId;
@property (nonatomic, retain) NSString * noteAnnotate;
@property (nonatomic, retain) NSNumber * hasImage;
@property (nonatomic, retain) NSNumber * hasNoteAnnotate;
@property (nonatomic, retain) NSNumber * hasNoteStar;
@property (nonatomic, retain) NSString * noteSection;

@end
