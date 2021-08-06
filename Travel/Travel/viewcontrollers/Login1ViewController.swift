//
//  Login1ViewController.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit

class Login1ViewController: UIViewController {
 
    @IBOutlet weak var loginbutton: UIButton!
    @IBOutlet weak var signupbutton: UIButton!
    
    override func viewDidLayoutSubviews() {
        loginbutton.layer.cornerRadius = 23.0
        loginbutton.layer.borderWidth = 2
        loginbutton.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        signupbutton.layer.cornerRadius = 23.0
        signupbutton.layer.borderWidth = 2
        signupbutton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    

    @IBAction func loginBtnTapped(_ sender: UIButton) {
        guard let view = AppSingleton.shared.navigateView(viewRef: .login2, storyboard: .Main) as? login2 else {
            return
        }
        self.navigationController?.pushViewController(view, animated: true)
    }
    

}
