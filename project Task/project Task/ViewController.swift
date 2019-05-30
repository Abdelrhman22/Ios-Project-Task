//
//  ViewController.swift
//  project Task
//
//  Created by Esraa Hassan on 5/30/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oldPasswordLabel: UITextField!
    
    @IBOutlet weak var newPasswordLabel: UITextField!
    
    @IBOutlet weak var confirmLabel: UITextField!
    
    @IBOutlet weak var updatePasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myColor = UIColor.black
        oldPasswordLabel.layer.borderColor = myColor.cgColor
        newPasswordLabel.layer.borderColor = myColor.cgColor
        confirmLabel.layer.borderColor = myColor.cgColor
        updatePasswordButton.layer.borderColor = myColor.cgColor
        
        oldPasswordLabel.layer.borderWidth = 1.0
        newPasswordLabel.layer.borderWidth = 1.0
        confirmLabel.layer.borderWidth = 1.0
        updatePasswordButton.layer.borderWidth = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

