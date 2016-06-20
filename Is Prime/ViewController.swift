//
//  ViewController.swift
//  Is Prime
//
//  Created by Zyiad Alotaibi on 7/19/1437 AH.
//  Copyright © 1437 Ziyad. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textFieldNumber: UITextField!
    @IBOutlet weak var isPrimeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Button(sender: AnyObject) {
        
        func isPrime(n: Int) -> Bool { // algorithime
        
            if n < 2 {
                return false // are not primes
            }
            
            let limit = Int(sqrt(Float(n))) // sqrt function accept Float Number
            
            if limit < 2 {
                return true // 2, 3 are primes
            }
            
            for i in 2...limit {
                if n % i == 0 {
                    return false
                }
            }
            
            return true
        }
        if let intNumber = Int(textFieldNumber.text!) {
            
            if isPrime(intNumber) {
                isPrimeLabel.text = "العدد أوّلي"
                
            } else {
            isPrimeLabel.text = "العدد ليس أوّليًا"
            }
        }
        else { // if intNumber == nil
                
            isPrimeLabel.text = "ادخل عددًا"
        }
        

    }

}

