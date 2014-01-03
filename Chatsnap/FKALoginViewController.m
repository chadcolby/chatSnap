//
//  FKALoginViewController.m
//  Chatsnap
//
//  Created by Chad D Colby on 12/30/13.
//  Copyright (c) 2013 kramerica. All rights reserved.
//

#import "FKALoginViewController.h"
#import <Parse/Parse.h>

@interface FKALoginViewController ()

@end

@implementation FKALoginViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
}



- (IBAction)loginButton:(id)sender {
    
    //NSLog(@"The button was pushed");
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
   
    
    if ([username length] == 0 || [password length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oh no!" message:@"Be sure to enter your the correct info!" delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles: Nil];
        
        [alertView show];
    } else {
        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Sorry" message:[error.userInfo objectForKey:@"error"] delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                [alertView show];
            }
            else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }];
        
    }

}
@end
