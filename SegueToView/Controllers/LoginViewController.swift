//
//  ViewController.swift
//  SegueToView
//
//  Created by user on 16.12.2021.


// На InfoViewController хотел передать имя
// на ImageViewController передать фото из папки assest, запутался и не смог разобраться как


import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    let user = User.getUserData()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarControllers = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarControllers.viewControllers else { return }
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.login = loginTF.text // не смог понять почему не передается логин на WelcomeViewController
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.ImageLabel = user.person.image
        
        viewControllers.forEach {
            if let VC = $0 as? InfoViewController {
                VC.infoLabel.text = user.login
            } else if let VCImage = $0 as? ImageViewController {
                VCImage.ImageLabel = user.person.image
            }
        }
    }
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    @IBAction func logInButton(_ sender: Any) {
        if loginTF.text !=  user.login {
            showAlert(title: "Invalid login", message: "Please enter correct name")
        } else if passwordTF.text != user.password {
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

