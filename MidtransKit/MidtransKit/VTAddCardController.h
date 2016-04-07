//
//  VTAddCardController.h
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 2/23/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MidtransCoreKit/VTCustomerDetails.h"

@interface VTAddCardController : UIViewController

@property (nonatomic, readonly) VTCustomerDetails *customer;
@property (nonatomic, readonly) NSArray *items;

+ (instancetype)controllerWithCustomer:(VTCustomerDetails *)customer items:(NSArray *)items;
@end
