//
//  FKACameraViewController.h
//  Chatsnap
//
//  Created by Chad D Colby on 1/2/14.
//  Copyright (c) 2014 kramerica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FKACameraViewController : UITableViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

- (IBAction)cancelButton:(id)sender;
- (IBAction)sendButton:(id)sender;



@property(nonatomic, strong)UIImagePickerController *imagePicker;
@property(nonatomic, strong)UIImage *image;
@property(nonatomic, strong) NSString *videoFilePath;
@property(nonatomic, strong) NSArray *friends;
@property(nonatomic, strong) PFRelation *friendsRelation;
@property (nonatomic, strong) NSMutableArray *recipients;

- (void) uploadMessage;
- (UIImage *)resizeImage: (UIImage *)image toWidth:(float)width andHeight:(float)height;

@end
