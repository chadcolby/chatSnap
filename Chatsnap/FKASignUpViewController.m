//
//  FKASignUpViewController.m
//  Chatsnap
//
//  Created by Chad D Colby on 12/30/13.
//  Copyright (c) 2013 kramerica. All rights reserved.
//

#import "FKASignUpViewController.h"
#import <Parse/Parse.h>

@interface FKASignUpViewController ()

@end

@implementation FKASignUpViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}



- (IBAction)signupButton:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *email = [self.emailField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([username length] == 0 || [password length] == 0 || [email length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oh no!" message:@"Be sure to enter your the correct info!" delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles: Nil];
        
        [alertView show];
    } else {
        PFUser *newUser = [PFUser user];
        newUser.username = username;
        newUser.password = password;
        newUser.email = email;
        
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Sorry" message:[error.userInfo objectForKey:@"error"] delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
                [alertView show];
            }
            else {
                [self.navigationController popToRootViewControllerAnimated: YES];
            }
        }];
    }

}
@end
