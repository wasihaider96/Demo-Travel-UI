//
//  guidethreeViewController.swift
//  Travel
//
//  Created by Dev ILI on 05/08/2021.
//

import UIKit

class guidethreeViewController: NavigationController {
    
    @IBOutlet weak var imagesplash3: UIImageView!
    @IBOutlet weak var roundsidebutton: UIButton!
    @IBOutlet weak var roundside2: UIButton!
    
    override func viewDidLayoutSubviews() {
        
        roundsidebutton.layer.cornerRadius = 23.0
        roundsidebutton.layer.borderWidth = 2
        roundsidebutton.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        roundside2.layer.cornerRadius = 23.0
        roundside2.layer.borderWidth = 2
        roundside2.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        imagesplash3.layer.cornerRadius = 5
        imagesplash3.clipsToBounds = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func skipbtntapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "Login1ViewController") as? Login1ViewController {
            self.navigationController?.pushViewController(vc, animated: true)
           }
    }
    
    @IBAction func nextbtntapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "Login1ViewController") as? Login1ViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
