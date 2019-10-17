//
//  ProtocolViewController.swift
//  protocol
//
//  Created by amiet on 17/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit

protocol kitProtocol {
  //  func protocolMethod(name : String, phone : String, office : String)   // If we have only few
    func protocolMethod(object :[String:String])                            // If we have multiple
}

class ProtocolViewController: UIViewController {    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var office: UITextField!
    var delegate : kitProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   //     self.delegate = self as? kitProtocol
        // Do any additional setup after loading the view.
    }
    
    @IBAction func click(_ sender:  Any)
    {
        let protocolDectionary : [String : String] = ["name": name.text!, "phone": phone.text!, "office": office.text!]
        delegate.protocolMethod(object:protocolDectionary)
 //       delegate.protocolMethod(name:name.text!, phone:phone.text!, office: office.text!)
        self.dismiss(animated: true, completion: nil)                                         // If modelViewController
//        self.navigationController?.popViewController(animated: true)                        // If Push Viue Controller
    }
    
    
    
//    override func viewDidDisappear(_ animated: Bool) {
//        delegate.protocolMethod(name:name.text!, phone:phone.text!, office: office.text!)
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
