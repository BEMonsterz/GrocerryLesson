//
//  GroceryCategory.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryCategory : NSObject<NSCoding>



@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSMutableArray *groceryItems;
@end


//@property (nonatomic,copy) NSString *firstName;
//@property (nonatomic,copy) NSString *lastName;