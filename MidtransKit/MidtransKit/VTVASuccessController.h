//
//  VTVASuccessController.h
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 5/20/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTClassHelper.h"
#import "VTVATransactionStatusViewModel.h"

@interface VTVASuccessController : UIViewController
- (instancetype)initWithViewModel:(VTVATransactionStatusViewModel *)viewModel;
@end
