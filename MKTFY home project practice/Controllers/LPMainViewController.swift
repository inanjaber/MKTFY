//
//  LPMainViewController.swift
//  MKTFY home project practice
//
//  Created by Inan Jaber on 2021-10-15.
//

import UIKit

class LPMainViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnShowPassword: UIButton!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnCreateUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnLogin.layer.cornerRadius = btnLogin.frame.size.height / 4
        
        btnCreateUser.layer.cornerRadius = btnCreateUser.frame.size.height / 4
        
        txtPassword.delegate = self
    }
    

    @IBAction func touchShowButton(_ sender: Any) {
        
        if txtPassword.isSecureTextEntry {
            
            // never toggle twice
            btnShowPassword.setTitle("Show", for: .normal)
            
        } else {
            btnShowPassword.setTitle("Hide", for: .normal)
        }
        
        txtPassword.isSecureTextEntry.toggle()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }

}
