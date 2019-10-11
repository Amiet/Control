//
//  ViewController.swift
//  Closure
//
//  Created by amiet on 10/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Calling Closure
        clouserValue()
        let pvalueV = valueV(10,20)
        valueP("oki","Hiu")
         print("Hello",pvalueV)
        // 1
        fetchData(successHandler: success, failureString: errorString, ipAddress: "2.1.3.4")
   
        // 2
        fetchData(successHandler: {(success : String) in
            print("Success")
        }, failureString: {(error : String) in
            print("Value")
        }, ipAddress: "1.2.3.4")
        
      if let valueNew =  valueCallFunctionMethod(vstring: "Hi", estring: "Hellow")
      {
      print(valueNew)
      }
    }
    
    func valueCallFunctionMethod(vstring : String, estring : String) -> String?
    {
        
        return "Ok"
    }
    
    let clouserValue = {
       print("Hi How are you?")
    }

    
    let valueV : (Int, Int) -> Int = {(a, b) -> Int in
        
        return a + b
    }

    
    let valueP = {(a : String,b : String) in
     print(a + b)
        
    }
    
    
    // Closure
    let success = {(responceString : String) in
        
        print(responceString)
    }
    
    let errorString = {(errorString : String) in
        print(errorString)
    
    }
    
    
    //Calling closure in function method
    func fetchData(successHandler : (String) ->Void, failureString : (String) -> Void , ipAddress : String )
    {
        //Hinting
        //
        //
        //
        //
        //after 10 sec
        
        successHandler("responce")
        errorString("Error")
    }
    
    
    
    
    ///@nonescaping
    func getSumOf(array:[Int], handler: ((Int)->Void)) {
            //step 2
            var sum: Int = 0
            for value in array {
                sum += value
            }
            
            //step 3
            handler(sum)
        }
        
        func doSomething() {
            //setp 1
            self.getSumOf(array: [16,756,442,6,23]) { [weak self](sum) in
                print(sum)
                //step 4, finishing the execution
            }
        }
    //It will print the sumof all the given numbers.
    
    
    
    
    
    //@escaping

    //Storage
    
    var complitionHandler: ((Int)->Void)?
        func getSumOfStorage(array:[Int], handler: @escaping ((Int)->Void)) {
            //step 2
           //here I'm taking for loop just for example, in real case it'll be something else like API call
           var sum: Int = 0
            for value in array {
                sum += value
            }
    //step 3
            self.complitionHandler = handler
        }
        
        func doSomethingStorage() {
            //setp 1
            self.getSumOfStorage(array: [16,756,442,6,23]) { [weak self](sum) in
                print(sum)
                //step 4, finishing the execution
            }
        }
    //Here we are storing the closure for future use.
    //It will print the sumof all the passed numbers.
    
    
    
    // Asynchronous Execution
    func getSumOfAsynchronous(array:[Int], handler: @escaping ((Int)->Void)) {
            //step 2
            var sum: Int = 0
            for value in array {
                sum += value
            }
            //step 3
            Globals.delay(0.3, closure: {
                handler(sum)
            })
        }
        
        func doSomethingAsynchronous() {
            //setp 1
            self.getSumOfAsynchronous(array: [16,756,442,6,23]) { [weak self](sum) in
                print(sum)
                //step 4, finishing the execution
            }
        }
    //Here we are calling the closure with the delay of 0.3 seconds
    //It will print the sumof all the passed numbers.
}

