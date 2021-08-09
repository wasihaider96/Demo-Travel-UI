//
//  recoverpassViewController.swift
//  Travel
//
//  Created by Dev ILI on 09/08/2021.
//

import UIKit

class recoverpassViewController: NavigationController {
    @IBOutlet weak var nexttapbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nexttapbtn.layer.cornerRadius = 23.0
        nexttapbtn.layer.borderWidth = 2
        nexttapbtn.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
    }
}
