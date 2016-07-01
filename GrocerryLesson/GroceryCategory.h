//
//  GroceryCategory.h
//  GrocerryLesson
//
//  Created by Bryan Ayllon on 6/30/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryCategory : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSMutableArray *groceryItems;
@end
