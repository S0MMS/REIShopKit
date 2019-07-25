//
//  ShopKitAnalyticsHelper.m
//  REI
//
//  Created by chris1 on 7/24/19.
//  Copyright © 2019 REI. All rights reserved.
//

#import "ShopKitAnalyticsHelper.h"

#import "ACPCore.h"
#import "ACPGriffonBridge.h"
#import "ACPAnalytics.h"
#import "ACPIdentity.h"
#import "ACPLifecycle.h"
#import "ACPSignal.h"
#import "ACPUserProfile.h"

#import <NewRelicAgent/NewRelic.h>

@implementation ShopKitAnalyticsHelper

+ (void)configureAdobeAnalytics: (NSString *)adobeApplicationId {
    NSLog(@"configuring Adobe analytics...");
    
#if DEBUG
    [ACPCore setLogLevel:ACPMobileLogLevelVerbose];
#else
    [ACPCore setLogLevel:ACPMobileLogLevelError];
#endif
    
    [ACPCore configureWithAppId:adobeApplicationId];
    [ACPGriffonBridge registerExtension];
    [ACPAnalytics registerExtension];
    [ACPIdentity registerExtension];
    [ACPLifecycle registerExtension];
    [ACPSignal registerExtension];
    [ACPUserProfile registerExtension];
    [ACPCore start:^{
        [ACPCore lifecycleStart:nil];
    }];
    
    
}

+ (void)configureNewRelicAnalytics: (NSString *)applicationToken {
    NSLog(@"configuring New Relic analytics using application token %@", applicationToken);
    [NewRelicAgent startWithApplicationToken:applicationToken];
    
    //[NewRelicAgent crashNow:@"Ascent Dev test crash for New Relic"];
}

@end
