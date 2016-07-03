//
//  ItemCategory.h
//  GrocerryApplication
//
//  Created by Bryan Ayllon on 7/3/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemCategory : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSMutableArray *groceryItems;


@end
