//
//  RedRouter.h
//  Example
//
//  Created by macmini1 on 04.06.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIViewController+Routing/UIViewController+Routing.h>

@interface MainRouter : NSObject<YDRouter>
- (void)showRedVCFrom:(UIViewController*)sourceVC withDictionary:(NSDictionary *)destinationVCConfiguration;
- (void)showGreenVCFrom:(UIViewController*)sourceVC withDictionary:(NSDictionary *)destinationVCConfiguration;
@end
