#import <Google/SignIn.h>
#import "SegueOneControllerTableViewController.h"

@implementation SegueOneControllerTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Does not work on second launch of Sign In Controller but...
    // It will work second time around if we delay for a little bit... :(
    
    //dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
    
        [self doSignIn];
    
    //});
}

- (void)doSignIn {
    GIDSignIn* signIn = [GIDSignIn sharedInstance];
    signIn.delegate = self;
    signIn.uiDelegate = self;
    [signIn signIn];
}

- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    NSString *message = [NSString stringWithFormat:@"Sign In Done %@", error];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Test-Signin"
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
