//
//  ViewController.swift
//  Protocols and Delegates
//
//  Created by Admin on 28/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var DataLabel: UILabel! = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterInformation(info: NSString) {
        DataLabel.text = info as String
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC"{
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            
            secondVC.delegate = self
        }
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

