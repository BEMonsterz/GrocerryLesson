//
//  GroceryItemsTableViewController.m
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "GroceryItemsTableViewController.h"

@interface GroceryItemsTableViewController ()<AddItemsDelegate>

@end

@implementation GroceryItemsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    self.title = self.selectedGroceryCategory.title;
    
    _groceryItems = self.selectedGroceryCategory.groceryItems;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) addItemButtonWasPressed:(NSString *)item{
    
    ItemCategory *itemCategory = [[ItemCategory alloc] init];
    itemCategory.titles = item;
    
    [_groceryItems addObject:itemCategory];
    [self.tableView reloadData];

//
//    
//    
//    
}
#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _groceryItems.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if([segue.identifier isEqualToString:@"AddItemsCategorySegue"]){
        
        AddItemsViewController *addItemsViewController= (AddItemsViewController *)segue.destinationViewController;
        
        
        addItemsViewController.addItemsDelegate = self;
    
    
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cells = [tableView dequeueReusableCellWithIdentifier:@"Cells" forIndexPath:indexPath];
    
    // Configure the cell...
    ItemCategory *itemCategory = _groceryItems[indexPath.row];
    
    cells.textLabel.text = itemCategory.titles;
    
    return cells;
}
@end
