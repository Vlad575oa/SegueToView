//
//  ViewController.swift
//  SegueToView
//
//  Created by user on 16.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcome = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    

    @IBAction func logInButton(_ sender: Any) {
    }
    @IBAction func forgotUserNameButton(_ sender: Any) {
        
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
    }
    
}

