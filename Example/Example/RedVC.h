//
//  RedVC.h
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PortraitVC.h"

@interface RedVC : PortraitVC
@property (strong,nonatomic) NSString *name;
- (void)configureWith:(NSString*)name;
@end
