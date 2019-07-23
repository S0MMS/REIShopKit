//
//  BazUtil.swift
//  REIShopKit_Example
//
//  Created by chris1 on 7/20/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

import ACPCore
import ACPAnalytics
//import NewRelicAgent

public class FooUtil: NSObject {
    
    @objc public func configureAnalytics() {
        
        ACPCore.configure(withAppId: "yourAppId")
        ACPAnalytics.registerExtension()
        ACPIdentity.registerExtension()
        ACPCore.start(nil)
    }
    
    @objc public func dispatchAnalytics() {
        //create a context data dictionary
        var contextData: [String : String] = [:]
        
        // add products, a purchase id, a purchase context data key, and any other data you want to collect.
        // Note the special syntax for products
        contextData["&&products"] = ";Running Shoes;1;69.95,;Running Socks;10;29.99"
        contextData["m.purchaseid"] = "1234567890"
        contextData["m.purchase"] = "1"
        
        // send the tracking call - use either a trackAction or TrackState call.
        // trackAction example:
        ACPCore.trackAction("purchase", data: contextData)
        // trackState example:
        ACPCore.trackState("Order Confirmation", data: contextData)
    }
    
    @objc public func configureNewRelic() {
//        NewRelicAgent.start(withApplicationToken: "AA20f451bc102b114645689092c95bb597146165c4")
    }
    
}
