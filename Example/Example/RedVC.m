//
//  RedVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "RedVC.h"

@interface RedVC ()
@property (weak,nonatomic) IBOutlet UILabel *label;
@end

@implementation RedVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self configureWith:self.name];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureWith:(NSString*)name
{
    self.name = name;
    self.label.text = self.name;
}

@end
