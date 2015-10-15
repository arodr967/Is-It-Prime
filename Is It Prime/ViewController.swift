//
//  ViewController.swift
//  Is It Prime
//
//  Created by Alicia Rodriguez on 10/14/15.
//  Copyright © 2015 Alicia Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input_TextField: UITextField!
    @IBOutlet var answer_Label: UILabel!
    
    @IBAction func submit_Button(sender: AnyObject) {
        
        var isPrime = true
        let input = Int (input_TextField.text!)!
        
        if input > 2 {
            for var i = 2; i < input; i++ {
                if input % i == 0 {
                    isPrime = false
                }
                
            }
        } else if input == 2 {
            isPrime = true
        } else {
            isPrime = false
        }
        
        print(isPrime)
        
        if isPrime {
            answer_Label.text = "Yes!"
        } else {
            answer_Label.text = "Nope!"
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

