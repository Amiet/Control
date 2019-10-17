//
//  ViewController.swift
//  protocol
//
//  Created by amiet on 17/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit

class ViewController: UIViewController , kitProtocol{
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var office: UITextField!
    
    @IBAction func click(_ sender: Any) {
        // If we are pushing it from code
        let storyboard = self.storyboard?.instantiateViewController(identifier: "ProtocolViewController") as! ProtocolViewController
        storyboard.delegate = self
        self.navigationController?.pushViewController(storyboard, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // If we are using push or model view controoler from Ui storyboard
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ProtocolViewController" {
            let vc : ProtocolViewController = segue.destination as! ProtocolViewController
            vc.delegate = self
        }
    }
    
    
    //   func protocolMethod(name : String, phone : String, office : String)
    func protocolMethod(object :[String:String])                            // If we have multiple
    {        
        self.name.text = object["name"]
        self.phone.text = object["phone"]
        self.office.text = object["office"]
    }
    
}

