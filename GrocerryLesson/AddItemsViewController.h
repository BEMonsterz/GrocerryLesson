//
//  AddItemsViewController.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 7/1/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol AddItemsDelegate <NSObject>

-(void) addItemButtonWasPressed:(NSString *) item;

@end

@interface AddItemsViewController : UIViewController{
    
    
}
@property(nonatomic,weak) IBOutlet UITextField *itemNameField;
@property(nonatomic,weak) id<AddItemsDelegate> delegate;
 @end



