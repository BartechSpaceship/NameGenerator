//
//  ViewController.swift
//  NameGenerator
//
//  Created by Bartek on 2/26/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generateName(_ sender: UIButton) {
        
        let gene = randomString(length: 16)
        
        randomName.text = gene
        
        
        
    }
    func randomString(length: Int) -> String {

        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=~`<,>.?;:"
        let len = UInt32(letters.length)

        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }

}

