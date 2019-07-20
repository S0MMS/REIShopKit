//
//  FooUtil.swift
//  Nimble
//
//  Created by chris1 on 7/19/19.
//

import UIKit

import ACPCore
//import ACPAnalytics

//import RxSwift

public class FooUtil: NSObject {

    @objc public func fooInstanceStuff() {
        print("foo instance stuff")
    }
    
    @objc public static func fooClassStuff() {
        let b = BarUtil()
        b.barInstanceStuff()
        
        print("foo class stuff")
    }
    
    @objc public func dispatchAnalytics() {
        //create a context data dictionary
        var contextData: [String : String] = [:]
        
        // add products, a purchase id, a purchase context data key, and any other data you want to collect.
        // Note the special syntax for products
        contextData["&&products"] = ";Running Shoes;1;69.95,;Running Socks;10;29.99"
        contextData["m.purchaseid"] = "1234567890"
        contextData["m.purchase"] = "1"
        
//        // send the tracking call - use either a trackAction or TrackState call.
//        // trackAction example:
//        ACPCore.trackAction("purchase", data: contextData)
//        // trackState example:
//        ACPCore.trackState("Order Confirmation", data: contextData)
    }
    
}
