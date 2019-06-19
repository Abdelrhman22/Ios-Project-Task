//
//  updatePasswordViewController.swift
//  project Task
//
//  Created by JETS Mobile Lab - 9 on 6/18/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit
import MaterialComponents
class updatePasswordViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var newPasswordTF: MDCTextField!
    @IBOutlet weak var confirmPasswordTF: MDCTextField!
    
    @IBAction func backBtn(_ sender: UIButton) {
        print("Back Pressed")
        self.dismiss(animated: true, completion: nil)
    }
    var newPasswordTFController : MDCTextInputControllerUnderline?
    var confirmPasswordTFFController : MDCTextInputControllerUnderline?
    
    @IBOutlet weak var newPasswordBtn: UIButton!
    @IBOutlet weak var confirmPasswordBtn: UIButton!
    
    @IBAction func showNewPassword(_ sender: UIButton) {
        newPasswordTF.isSecureTextEntry = !newPasswordTF.isSecureTextEntry
        if(newPasswordTF.isSecureTextEntry){
            newPasswordBtn.setImage(UIImage(named: "showPassword.png"), for: .normal)
        }
        else{
            newPasswordBtn.setImage(UIImage(named: "hidePassword.png"), for: .normal)
        }
    }
    
    @IBAction func showConfirmPassword(_ sender: UIButton) {
        confirmPasswordTF.isSecureTextEntry = !confirmPasswordTF.isSecureTextEntry
        if(confirmPasswordTF.isSecureTextEntry){
            confirmPasswordBtn.setImage(UIImage(named: "showPassword.png"), for: .normal)
        }
        else{
            confirmPasswordBtn.setImage(UIImage(named: "hidePassword.png"), for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        newPasswordTFController      = MDCTextInputControllerUnderline(textInput: newPasswordTF)
        confirmPasswordTFFController = MDCTextInputControllerUnderline(textInput: confirmPasswordTF)
        //Do any additional setup after loading the view.
        
        newPasswordTF.delegate = self
        confirmPasswordTF.delegate = self
        
        newPasswordTF.isSecureTextEntry = true
        confirmPasswordTF.isSecureTextEntry = true
        
         newPasswordTF.setIcon(newPasswordBtn , 30)
         confirmPasswordTF.setIcon(confirmPasswordBtn , 30)
    }
    

}
extension UITextField {
    func setIcon(_ image: UIView, _ size: Int) {
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 0, y: 0, width: size + 15, height: size))
        iconContainerView.addSubview(image)
        leftViewMode = .always
        leftView = iconContainerView
    }
}
