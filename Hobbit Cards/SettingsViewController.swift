//
//  SettingsViewController.swift
//  Hobbit Cards
//
//  Created by Chris Nandor on 2015.02.13.
//  Copyright (c) 2015 Pudge.Net. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var singleton = HobbitSingleton()

    @IBOutlet weak var mamaSwitch: UISwitch!
    @IBAction func pressMamaSwitch(sender: UISwitch) {
        if (self.mamaSwitch!.on) {
            self.singleton.hobbitMode = "mama"
        }
        else {
            self.singleton.hobbitMode = ""
        }
    }

    override func loadView() {
        super.loadView()
        self.mamaSwitch!.setOn(self.singleton.hobbitMode == "mama", animated: false)
    }
}

