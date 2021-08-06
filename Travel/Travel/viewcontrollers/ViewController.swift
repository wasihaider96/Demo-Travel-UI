//
//  ViewController.swift
//  Travel
//
//  Created by Dev ILI on 02/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roundsidebuttion: UIButton!
    @IBOutlet weak var imgsplash1: UIImageView!
    @IBOutlet weak var roundbutton: UIButton!
    
    override func viewDidLayoutSubviews() {
        
        roundbutton.setImage(UIImage(named: "navplus.png"), for: .normal)
        roundbutton.imageEdgeInsets = UIEdgeInsets(top:5, left: 5, bottom: 5, right: 5)
        roundbutton.tintColor = UIColor.white;
        
        roundbutton.layer.cornerRadius = roundbutton.frame.width/2
        
        roundsidebuttion.layer.cornerRadius = 23.0
        roundsidebuttion.layer.borderWidth = 2
        roundsidebuttion.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        imgsplash1.layer.cornerRadius = 5
        imgsplash1.clipsToBounds = true
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func firsttap(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "GuideTwoViewController") as? GuideTwoViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @IBAction func skipbutton(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "Login1ViewController") as? Login1ViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    }
}
