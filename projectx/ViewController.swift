//
//  ViewController.swift
//  projectx
//
//  Created by Pascal Odek on 8/3/16.
//  Copyright © 2016 Pascal Odek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var display: UILabel!
    
    var midTypin = false
    
    @IBAction func touchFive(sender: UIButton) {
        let dig = sender.currentTitle!
        if(midTypin){
            let curDisp = display.text!
            display.text = curDisp + dig
        }else{
            display.text = dig
        }
        midTypin = true
    }

    @IBAction func performOps(sender: UIButton) {
        midTypin = false
        if let ops = sender.currentTitle{
            if ops == "π" {
                display.text = String(M_PI)
            }
        }
        
    }
}

