//
//  FKAEditFriendsViewController.h
//  Chatsnap
//
//  Created by Chad D Colby on 12/30/13.
//  Copyright (c) 2013 kramerica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FKAEditFriendsViewController : UITableViewController

@property(nonatomic, strong) NSArray *allUsers;
@property(nonatomic, strong) PFUser *currentUser;
@property(nonatomic, strong) NSMutableArray *friends;
-(BOOL)isFriend:(PFUser *)user;

@end
