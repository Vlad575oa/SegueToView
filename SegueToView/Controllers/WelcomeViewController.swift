//
//  WelcomeViewController.swift
//  SegueToView
//
//  Created by user on 16.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.welcome else { return }
        welcomeLabel.text = "Welcome \(login)"
    }
    
    @IBAction func logOutButton(_ sender: Any) {
    }
   
    }

