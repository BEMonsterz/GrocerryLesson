//
//  GroceryItemsTableViewController.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"
#import "AddItemsViewController.h"
#import "ItemCategory.h"

@interface GroceryItemsTableViewController : UITableViewController

@property (nonatomic,strong) GroceryCategory *selectedGroceryCategory;
@property(nonatomic,strong) NSMutableArray *groceryItems;


@end
