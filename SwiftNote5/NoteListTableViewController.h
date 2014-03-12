//
//  NoteListTableViewController.h
//  SwiftNote5
//
//  Created by jun on 2014. 3. 11..
//  Copyright (c) 2014년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNoteViewController.h"

@interface NoteListTableViewController : UITableViewController <AddNoteViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController; //manage the results returned from a Core Data fetch request to provide data for a UITableView object

@end
