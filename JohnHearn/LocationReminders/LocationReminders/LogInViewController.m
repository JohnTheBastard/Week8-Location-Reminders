//
//  LogInViewController.m
//  LocationReminders
//
//  Created by John D Hearn on 12/7/16.
//  Copyright © 2016 Bastardized Productions. All rights reserved.
//

#import "LogInViewController.h"
#import "SignUpViewController.h"
@import UIKit;

@interface LogInViewController ()
//@property (readwrite, strong, nonatomic, nullable) UIView *logo;
@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.signUpController = [[SignUpViewController alloc] init];
    UIImage *image = [[UIImage alloc] init];
    image = [UIImage imageNamed:@"portal_logo"];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = image;
    self.logInView.logo = imageView;
    [self.view addSubview:imageView];

    UIColor *portalBlue = [UIColor colorWithRed:0.22
                                         green:0.76
                                          blue:0.99
                                         alpha:1.0];

    UIColor *portalOrange = [UIColor colorWithRed:0.95
                                            green:0.33
                                             blue:0.04
                                            alpha:1.0];

    self.logInView.backgroundColor = [UIColor blackColor];
    self.logInView.emailAsUsername = YES;


    self.logInView.usernameField.backgroundColor = portalBlue;
    self.logInView.usernameField.attributedPlaceholder =
                [[NSAttributedString alloc] initWithString:@"Email"
                                                attributes:@{NSForegroundColorAttributeName: [UIColor darkTextColor]}];
    self.logInView.usernameField.textColor = [UIColor blackColor];
    self.logInView.usernameField.separatorColor = [UIColor blackColor];
    self.logInView.passwordField.backgroundColor = portalBlue;
    self.logInView.passwordField.attributedPlaceholder =
                [[NSAttributedString alloc] initWithString:@"Password"
                                                attributes:@{NSForegroundColorAttributeName: [UIColor darkTextColor]}];
    self.logInView.passwordField.textColor = [UIColor blackColor];
    self.logInView.passwordField.separatorColor = [UIColor blackColor];
    [self.logInView.logInButton setBackgroundImage:nil
                                          forState:UIControlStateNormal];
    self.logInView.logInButton.backgroundColor = portalOrange;
    self.logInView.logInButton.tintColor = portalOrange;
    //self.logInView.logInButton.


}


@end