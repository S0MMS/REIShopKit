//
//  ObjcUtil.m
//  REIShopKit_Example
//
//  Created by chris1 on 7/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

#import "ObjcUtil.h"

//@import REIShopKit;
#import <BazUtil.h>
//#import <NewRelicAgent/NewRelic.h>

@implementation ObjcUtil

+(void)setupNewRelic {
//    [NewRelicAgent startWithApplicationToken:@"AA20f451bc102b114645689092c95bb597146165c4"];
    [BazUtil setupNewRelic];
}

+(void)dispatchNewRelicAnalytics
{
//    NewRelic.startInteraction(withName: eventName);
//    [NewRelic startInteractionWithName:@"bams!"];
    [BazUtil dispatchNewRelicAnalytics];
}

+(void)configAdobe
{
    [BazUtil configureAdobe];
}

+(void)dispatchAdobeAnalytics
{
    [BazUtil diespatchAdobeAnalytics];
}

@end
