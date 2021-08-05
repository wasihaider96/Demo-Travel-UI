//
//  GuideTwoViewController.swift
//  Travel
//
//  Created by Dev ILI on 05/08/2021.
//

import UIKit

class GuideTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nexttapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "guidethreeViewController") as? guidethreeViewController {
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
