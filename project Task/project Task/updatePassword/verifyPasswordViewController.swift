//
//  verifyPasswordViewController.swift
//  project Task
//
//  Created by JETS Mobile Lab - 9 on 6/19/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit
import MaterialComponents
class verifyPasswordViewController: UIViewController , UITextFieldDelegate{

    @IBAction func closeBtn(_ sender: Any) {
        print("Close Clicked")
    }
    @IBOutlet weak var oldPasswordTF: MDCTextField!
    
    var oldPasswordTFController : MDCTextInputControllerUnderline?
    
    @IBAction func verifyPassword(_ sender: UIButton)
    {
        print("verify Clicked")
        let storyBoard: UIStoryboard = UIStoryboard(name: "update", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "updateView") as! updatePasswordViewController
        self.present(newViewController, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var oldPasswordBtn: UIButton!
    
    @IBAction func showOldPassword(_ sender: UIButton) {
        oldPasswordTF.isSecureTextEntry = !oldPasswordTF.isSecureTextEntry
        if(oldPasswordTF.isSecureTextEntry){
            oldPasswordBtn.setImage(UIImage(named: "showPassword.png"), for: .normal)
        }
        else{
            oldPasswordBtn.setImage(UIImage(named: "hidePassword.png"), for: .normal)
        }
    }
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        oldPasswordTF.delegate = self
        oldPasswordTFController      = MDCTextInputControllerUnderline(textInput: oldPasswordTF)
        oldPasswordTF.isSecureTextEntry = true
        
        oldPasswordTF.setIcon(oldPasswordBtn , 30)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

