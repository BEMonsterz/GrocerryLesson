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






//#import "AddGroceryCategoriesViewController.h"
//#import "GroceryCategory.h"
//#import "GroceryItemsTableViewController.h"


@interface GroceryItemsTableViewController : UITableViewController{
    
    
    NSMutableArray *_groceryItems;
    
    
}

@property (nonatomic,strong) GroceryCategory *selectedGroceryCategory;

@end
