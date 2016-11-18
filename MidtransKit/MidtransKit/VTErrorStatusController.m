//
//  VTErrorStatusController.m
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 3/7/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "VTErrorStatusController.h"
#import "VTClassHelper.h"
#import "VTKITConstant.h"

#import <MidtransCoreKit/MidtransCoreKit.h>
@interface VTErrorStatusController ()
@property (nonatomic) NSError *error;
@end

@implementation VTErrorStatusController

- (instancetype _Nonnull)initWithError:(NSError *_Nonnull)error {
    self = [[VTErrorStatusController alloc] initWithNibName:@"VTErrorStatusController" bundle:VTBundle];
    if (self) {
        self.error = error;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = UILocalizedString(@"payment.failed",nil);
    
}

- (IBAction)finishPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
