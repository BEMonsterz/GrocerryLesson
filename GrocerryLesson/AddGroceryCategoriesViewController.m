//
//  AddGroceryCategoriesViewController.m
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "AddGroceryCategoriesViewController.h"

@interface AddGroceryCategoriesViewController ()

@end

@implementation AddGroceryCategoriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)close:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(IBAction)saveButtonPressed:(id)sender{
  
    [self.delegate addButtonWasPressed: self.categorieNameField.text];
    
    
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
