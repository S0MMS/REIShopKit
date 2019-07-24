//
//  ShopKitAnalyticsHelper.m
//  REI
//
//  Created by chris1 on 7/24/19.
//  Copyright © 2019 REI. All rights reserved.
//

#import "ShopKitAnalyticsHelper.h"

//#import <NewRelicAgent/NewRelic.h>
#import <NewRelicAgent/NewRelic.h>

@implementation ShopKitAnalyticsHelper

+ (void)configureAdobeAnalytics {
    NSLog(@"configuring Adobe analytics...");
}

+ (void)configureNewRelicAnalytics {
    NSLog(@"configuring New Relic analytics...");
    [NewRelicAgent startWithApplicationToken:@"AA20f451bc102b114645689092c95bb597146165c4"];
}

@end
