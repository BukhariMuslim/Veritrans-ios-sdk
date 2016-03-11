//
//  VTVAListController.h
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 3/8/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MidtransCoreKit/VTCustomerDetails.h>

@interface VTVAListController : UIViewController
+ (instancetype)controllerWithCustomer:(VTCustomerDetails *)customer items:(NSArray *)items;
@end
