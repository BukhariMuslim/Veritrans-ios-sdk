//
//  VTNetworking.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 2/16/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VTNetworking : NSObject

+ (id)sharedInstance;

- (void)postToURL:(NSString *)URL parameters:(NSDictionary *)parameters callback:(void(^)(id response, NSError *error))callback;
- (void)getFromURL:(NSString *)URL parameters:(NSDictionary *)parameters callback:(void(^)(id response, NSError *error))callback;

@end
