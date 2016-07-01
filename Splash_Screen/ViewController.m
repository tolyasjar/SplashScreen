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
    [self displayWelcomeMessage];
    
}


-(void) displayWelcomeMessage {
    
    
    if (![[NSUserDefaults standardUserDefaults]
                                boolForKey:@"splashAnimationShown"]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"YES" forKey:@"splashAnimationShown"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        //
        [UIView animateWithDuration:1.0 delay:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
            
            self.welcomeLabel.alpha = 1.0;
        } completion:^(BOOL finished) {
            
            [UIView animateWithDuration:1.0 delay:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
                
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
