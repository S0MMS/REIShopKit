//
//  FooUtil.swift
//  Nimble
//
//  Created by chris1 on 7/19/19.
//

import UIKit

public class FooUtil: NSObject {

    @objc public func fooInstanceStuff() {
        print("foo instance stuff")
    }
    
    @objc public static func fooClassStuff() {
        let b = BarUtil()
        b.barInstanceStuff()
        
        print("foo class stuff")
    }
    
}
