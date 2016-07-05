//
//  GroceryCategoriesTableViewController.m
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "GroceryCategoriesTableViewController.h"

@interface GroceryCategoriesTableViewController ()<AddCategoryDelgate>

@end

@implementation GroceryCategoriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _groceryCategoriesArray = [[NSMutableArray alloc] init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) addButtonWasPressed:(NSString *)category{
    
    GroceryCategory *groceryCategory = [[GroceryCategory alloc] init];
    groceryCategory.title = category;
    
    groceryCategory.groceryItems = [NSMutableArray array];
    [_groceryCategoriesArray addObject:groceryCategory];

    [self.tableView reloadData];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _groceryCategoriesArray.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if([segue.identifier isEqualToString:@"AddGroceryCategorySegue"]){
    
    AddGroceryCategoriesViewController *addGroceryViewController= (AddGroceryCategoriesViewController *)segue.destinationViewController;
    
    
    addGroceryViewController.delegate = self;
    }
    
    else if([segue.identifier isEqualToString:@"GroceryItemsSegue"]){
        GroceryItemsTableViewController *groceryItemsTableViewController = (GroceryItemsTableViewController *) segue.destinationViewController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        
        GroceryCategory *selectedGroceryCategory = _groceryCategoriesArray [indexPath.row];
        groceryItemsTableViewController.selectedGroceryCategory = selectedGroceryCategory;
        
    }


}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    GroceryCategory *groceryCategory = _groceryCategoriesArray[indexPath.row];
    
    cell.textLabel.text = groceryCategory.title;
    
    return cell;
}



@end
