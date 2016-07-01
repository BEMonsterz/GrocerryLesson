//
//  AddGroceryCategoriesViewController.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AddCategoryDelgate <NSObject>


-(void) addButtonWasPressed:(NSString *) category;
-(void) itemClose:(NSString *) item;


@end

@interface AddGroceryCategoriesViewController : UIViewController
{
    
}
@property (nonatomic,weak) IBOutlet UITextField *categorieNameField;

@property (nonatomic,weak) id<AddCategoryDelgate> delegate;

@end
