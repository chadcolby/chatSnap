//
//  FKAFriendsViewController.h
//  Chatsnap
//
//  Created by Chad D Colby on 12/30/13.
//  Copyright (c) 2013 kramerica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FKAFriendsViewController : UITableViewController

@property(nonatomic, strong)PFRelation *friendsRelation;
@property(nonatomic, strong)NSArray *friends;

@end
