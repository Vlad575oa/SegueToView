//
//  ViewController.swift
//  SegueToView
//
//  Created by user on 16.12.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = "Vlad"
    private let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcome = loginTF.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
    }
    @IBAction func logInButton(_ sender: Any) {
        if loginTF.text != "Vlad" {
            showAlert(title: "Invalid login", message: "Please enter correct name")
        } else if passwordTF.text != "1234" {
            showAlert(title: "Invalid password", message: "Please enter correct password")
        }
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        showAlert(title: "Invalid login", message: "Please enter name <Vlad>")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        showAlert(title: "Invalid password", message: "Please enter password <1234>")
    }
    
}

