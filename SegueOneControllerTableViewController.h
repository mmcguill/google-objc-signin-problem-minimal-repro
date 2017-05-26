//
//  SegueOneControllerTableViewController.h
//  testsignin
//
//  Created by Mark on 23/05/2017.
//  Copyright © 2017 Mark McGuill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegueOneControllerTableViewController : UITableViewController <GIDSignInDelegate, GIDSignInUIDelegate>

- (IBAction)cancel:(id)sender;

@end
