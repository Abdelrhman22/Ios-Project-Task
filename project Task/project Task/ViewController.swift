//
//  ViewController.swift
//  project Task
//
//  Created by Esraa Hassan on 5/30/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit
import PasswordTextField
class ViewController: UIViewController {
    let validationRule = RegexRule(regex:"^[A-Z ]+$", errorMessage: "Password must contain only uppercase letters")

    @IBOutlet weak var oldPasswordTF: PasswordTextField!
    
    @IBOutlet weak var newPasswordTF: PasswordTextField!
    
    @IBOutlet weak var confirmNewPasswordTF: PasswordTextField!
    
    @IBAction func updatebtn(_ sender: UIButton) {
        
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

