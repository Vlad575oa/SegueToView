//
//  Data User.swift
//  SegueToView
//
//  Created by user on 19.12.2021.
//

import UIKit

struct User {
    var login: String
    var password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Vlad", password: "1234", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let image: UIImage?
    
    static func getPerson() -> Person {
        Person(name: "Vlad", surname: "Oleynik", image: UIImage(named: "DSC_3854"))
    }
}

extension LoginViewController {
    func showAlert(title: String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)

        present(alert, animated: true, completion: nil)
    }
}
