//
//  ViewController.swift
//  REIShopKit
//
//  Created by S0MMS on 07/19/2019.
//  Copyright (c) 2019 S0MMS. All rights reserved.
//

import UIKit

import ACPCore
import ACPAnalytics

import REIShopKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print("loaded")
            
//        FooUtil.fooClassStuff();
        
//        let b = BarUtil()
//        b.barInstanceStuff();
        
//        self.dispatchAnalytics()
        let f = FooUtil()
        f.configureAnalytics()
        f.dispatchAnalytics()
        print("yeah")
        
        ObjcUtil.setupNewRelic()
        ObjcUtil.dispatchNewRelicAnalytics()
        ObjcUtil.configAdobe()
        ObjcUtil.dispatchAdobeAnalytics()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dispatchAnalytics() {
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
}

