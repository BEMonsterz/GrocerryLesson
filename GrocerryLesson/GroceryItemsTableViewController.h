//
//  GroceryItemsTableViewController.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"
@interface GroceryItemsTableViewController : UITableViewController
@property (nonatomic,strong) GroceryCategory *selectedGroceryCategory;

@end
