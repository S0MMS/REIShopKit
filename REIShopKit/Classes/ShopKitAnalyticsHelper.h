//
//  ShopKitAnalyticsHelper.h
//  REI
//
//  Created by chris1 on 7/24/19.
//  Copyright © 2019 REI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShopKitAnalyticsHelper : NSObject

+ (void)configureAdobeAnalytics;
+ (void)configureNewRelicAnalytics;

@end

NS_ASSUME_NONNULL_END
