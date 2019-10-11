//
//  ViewController.swift
//  controls
//
//  Created by amiet on 10/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Playing with control statement")
  
        // MARK : For Loop
        
        //For-in  Closed Range
        for placeholder in 1...5
        {
            print(placeholder)
        }
        
        let number = [1,2,3,4,5,6,7]
        
        // sum of all array value
        var sum = 0
        for aValue in number
        {
            sum = sum + aValue
            print(sum)
        }
        
        
        //Last value not consider
        for aValue in 1..<5
        {
            print(aValue)
        }
        
        //if we want only loop runing
        for _ in 1...5
        {
            print("Hellow")
        }
        
        
        //MARK While loop
        // In while it check the condition first the execute the function
        var a = 10
        while a > 0
        {
            print(a)
            a -= 1
        } // Entry condition loop
        
        // Output = from 10 to 1 not 0
        
        
// //       var a = 10
//        while a < 10
//        {
//            print(a)
//            a += 1
//        }
        
        // In repeat while it execute the function and the check the condition
        // repeat while execute atlest once
        repeat
        {
            print(a)
            a += 1
        } while a < 10 // exit control loop
    
    
// Switch
        let age = 18
    switch age {
    case 0:
        print("Hi");
    case 18:
        print("Yes")
        fallthrough
    case 20:
        print("Hellow")
    default:
        print("Ok");
    }
    }
}

