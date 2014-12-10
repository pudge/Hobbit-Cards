//
//  ViewController.swift
//  Hobbit Cards
//
//  Created by Chris Nandor on 2014.12.09.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit

let controlState = UIControlState.Normal
let hobbitNames = [
    "Gandalf", "Bilbo",
    "Thorin", "Fili", "Kili",
    "Balin", "Dwalin",
    "Bifur", "Bofur", "Bombur",
    "Dori", "Nori", "Ori",
    "Oin", "Gloin"
];
var hobbitDict = [String: Bool]();
var hobbitName = ""

class ViewController: UIViewController {
    @IBOutlet weak var hobbitButton: UIButton!

    @IBAction func hobbitPress(but: UIButton) {
        if (but.titleForState(controlState) == "" && hobbitName != "") {
            but.setTitle(
                hobbitName,
                forState: controlState
            )
        }
        else {
            setHobbitName()
            but.setBackgroundImage(
                UIImage(named: hobbitName),
                forState: controlState
            )
            but.setTitle(
                "",
                forState: controlState
            )
        }
    }

    func setHobbitName() {
        if (hobbitDict.count == hobbitNames.count) {
            hobbitDict.removeAll()
        }
        
        var newName = getRandHobbitName()
        while (hobbitDict[newName] == true) {
            newName = getRandHobbitName()
        }
        hobbitDict[newName] = true;
        hobbitName = newName
    }

    func getRandHobbitName()->String {
        return hobbitNames[Int(arc4random_uniform(UInt32(hobbitNames.count)))]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hobbitPress(hobbitButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

