# google-objc-signin-problem-minimal-repro
Minimal Repro of UI Problem in Google's Obj C Library

Setup
-----
First do a pod install, to get Google's Library (https://github.com/google/google-api-objectivec-client-for-rest).

Repro Steps
-----------
1) Run. Notice that you can segue to new view by pressing 'Segue', which asks you to sign-in on load. 
2) This works fine the first time we do this. You can now go back, by pressing the cancel button (Top-Left).
3) You can now press the Signout button on the main controller. 
4) Now press 'Segue' to go back to the new view controller. This attempts to load the sign-in screen again, as we've just signed out.
5) Notice that the screen is completely blank, and we are stuck.

Adding a simple delay in the viewDidLoad function as shown below ameliorates the problem... This isn't ideal though.

Not a Great Workaround
-----------------------
```
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
    [self doSignIn];
});
```
