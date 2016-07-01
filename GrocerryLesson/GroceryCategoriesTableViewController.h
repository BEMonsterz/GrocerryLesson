//
//  GroceryCategoriesTableViewController.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddGroceryCategoriesViewController.h"
#import "GroceryCategory.h"
#import "GroceryItemsTableViewController.h"

@interface GroceryCategoriesTableViewController : UITableViewController{
    
    NSMutableArray *_groceryCategoriesArray;
    
}

@end
