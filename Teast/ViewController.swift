//
//  ViewController.swift
//  Teast
//
//  Created by D7703_21 on 2018. 3. 19..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textfield: UITextField!
    @IBOutlet weak var UIlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Textfield.delegate = self as! UITextFieldDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Buttonaction(_ sender: Any) {
        UIlabel.text = Textfield.text
        Textfield.text = ""
        Textfield.resignFirstResponder()
    }
    func textfieldShouldReturn(_textfield: UITextfield) -> Bool {
        print("I pressed return Key")
        Textfield.resignFirstResponder()
        return true
    }
    
}

