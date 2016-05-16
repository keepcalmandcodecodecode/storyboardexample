//
//  GreenVC.h
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandscapeVC.h"

@interface GreenVC : LandscapeVC
@property (strong,nonatomic) NSString *name;
- (void)configureWith:(NSString*)name;
@end
