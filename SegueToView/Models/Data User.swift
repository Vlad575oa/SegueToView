//
//  Data User.swift
//  SegueToView
//
//  Created by user on 19.12.2021.
//

import Foundation
import UIKit

extension LoginViewController {
    func showAlert(title: String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
        
    }
}
