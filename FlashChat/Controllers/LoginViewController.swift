//
//  LoginViewController.swift
//  FlashChat
//
//  Created by Эдип on 27.09.2022.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    print(err)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                
            }
        }
    }
}
