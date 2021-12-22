//
//  InfoViewController.swift
//  SegueToView
//
//  Created by user on 22.12.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var info = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "My name \(info)"
    }
    


}
