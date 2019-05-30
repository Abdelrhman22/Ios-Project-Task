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
       initFieldBorder()
       let passwordImage = UIImage(named: "hideicon")
        addRightImageTo(txtField: oldPasswordLabel, andImage: passwordImage!)
        addRightImageTo(txtField: newPasswordLabel, andImage: passwordImage!)
        addRightImageTo(txtField: confirmLabel, andImage: passwordImage!)
        
    }
    func initFieldBorder()
    {
        let myColor = UIColor.black
        oldPasswordLabel.layer.borderColor = myColor.cgColor
        oldPasswordLabel.layer.borderWidth = 1.0
        
        newPasswordLabel.layer.borderColor = myColor.cgColor
        newPasswordLabel.layer.borderWidth = 1.0
        
        confirmLabel.layer.borderColor = myColor.cgColor
        confirmLabel.layer.borderWidth = 1.0
        
        updatePasswordButton.layer.borderColor = myColor.cgColor
        updatePasswordButton.layer.borderWidth = 1.0
    }
    func addRightImageTo(txtField :UITextField , andImage img : UIImage)
    {
        let rightImageView = UIImageView(frame: CGRect( x : 0.0 , y: 0.0 , width :img.size.width - 5 , height : img.size.height - 5 ))
        rightImageView.image = img
        txtField.rightView = rightImageView
        txtField.rightViewMode = .always
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

