#import "ViewController.h"
#import <Google/SignIn.h>

@implementation ViewController

- (IBAction)onSignout:(id)sender {
    [[GIDSignIn sharedInstance] disconnect];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Test-Signin"
                                                                   message:@"Sign Out Done"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
