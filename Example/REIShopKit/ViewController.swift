//
//  ViewController.swift
//  REIShopKit
//
//  Created by S0MMS on 07/19/2019.
//  Copyright (c) 2019 S0MMS. All rights reserved.
//

import UIKit

import REIShopKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print("loaded")
            
        FooUtil.fooClassStuff();
        
        let b = BarUtil()
        b.barInstanceStuff();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

