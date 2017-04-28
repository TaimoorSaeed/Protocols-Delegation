//
//  SecondViewController.swift
//  Protocols and Delegates
//
//  Created by Admin on 28/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate{
    func userDidEnterInformation(info:NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextFeild: UITextField! = UITextField()
    var delegate: DataEnteredDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(_ sender: Any) {
        if (delegate != nil) {
            let information: NSString = dataTextFeild.text! as NSString
            delegate!.userDidEnterInformation(info: information)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
