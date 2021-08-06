//
//  login2.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit


class login2: UIViewController {
    
    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var passrextfield: UITextField!
    @IBOutlet weak var loginbtntapped: UIButton!
    

    override func viewDidLoad() {
        loginbtntapped.layer.cornerRadius = 23.0
        loginbtntapped.layer.borderWidth = 2
        loginbtntapped.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        super.viewDidLoad()
    }

    @IBAction func backbtnpressed(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
}

    

