//
//  ViewController.m
//  Splash_Screen
//
//  Created by Toleen Jaradat on 6/29/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
  
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(showMessage:) userInfo:nil repeats:NO];
    
}

-(void) showMessage:(NSTimer *)timer
{
    
    
    if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults]
                               objectForKey:@"aValue"]]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"aValue"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    
        //
        [UIView animateWithDuration:1.0 animations:^{
            
            self.welcomeLabel.alpha = 1.0;
        } completion:^(BOOL finished) {
            
            [UIView animateWithDuration:1.0 animations:^{
                
                self.welcomeLabel.alpha = 0.0;
            } completion:^(BOOL finished) {
                
            }];
            
        }];
        //
    }
        
        
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
