//
//  AddItemsViewController.m
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 7/1/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "AddItemsViewController.h"

@interface AddItemsViewController ()

@end

@implementation AddItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






-(IBAction)itemClosed:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)addItemButtonWasPressed:(id)sender{
    [self.addItemsDelegate addItemButtonWasPressed: self.itemNameField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
