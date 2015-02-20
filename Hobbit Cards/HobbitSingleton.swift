//
//  HobbitSingleton.swift
//  Horn
//
//  Created by Chris Nandor on 2015.02.13.
//  Copyright (c) 2015 Pudge.Net. All rights reserved.
//

import Foundation

let defaults = NSUserDefaults.standardUserDefaults()

class HobbitSingleton:NSObject {
    var hobbitMode:String {
        set {
            defaults.setObject(newValue, forKey: "hobbitMode")
            defaults.synchronize()
        }
        get {
            return defaults.stringForKey("hobbitMode") ?? ""
        }
    }
}
