//
//  ViewController.swift
//  Is It Prime
//
//  Created by Brian Tan on 2/6/17.
//  Copyright © 2017 Brian Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textField: UITextField!

    @IBAction func button(_ sender: Any) {
        if let userEnteredString = textField.text {
            let num = Int(userEnteredString)
            if let number = num {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < (number / 2) {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    result.text = "\(number) is prime!"
                } else {
                    result.text = "\(number) is not prime"
                }
            } else {
                result.text = "Please enter a positive whole number"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

