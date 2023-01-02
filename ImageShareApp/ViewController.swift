//
//  ViewController.swift
//  ImageShareApp
//
//  Created by Bedirhan Köse on 30.12.22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var appLabel: UILabel!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signinButton(_ sender: Any) {
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
        if emailTF.text != "" && passwordTF.text != "" {
            //Registration
            Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!) { errorDataResult, error in
                if error != nil {
                    self.errorMessage(titleInput: "Error", messageInput: error?.localizedDescription ?? "Try Again!!!")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        } else {
            errorMessage(titleInput: "Error!", messageInput: "Please enter your username and password!")
        }

    }
    
    func errorMessage(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }

}

