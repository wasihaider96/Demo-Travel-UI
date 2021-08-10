//
//  login2.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit


class login2: NavigationController {
    
    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var passrextfield: UITextField!
    @IBOutlet weak var loginbtntapped: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbtntapped.layer.cornerRadius = 23.0
        loginbtntapped.layer.borderWidth = 2
        loginbtntapped.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        self.enableButton(.Singup)
        
        self.watchForClickHandler { tag in
            if tag == 1 {
                // action performed
                guard let view = AppSingleton.shared.navigateView(viewRef: .SignuppageViewController, storyboard: .Main) as? SignuppageViewController else {
                    return
                }
                self.navigationController?.pushViewController(view, animated: true)
            }
        }
    }
    @IBAction func signupbtntped(_ sender: UIButton) {
        guard let view = AppSingleton.shared.navigateView(viewRef: .SignuppageViewController, storyboard: .Main) as? SignuppageViewController else {
            return
        }
    }
    @IBAction func forgetpassbtntaped(_ sender: UIButton) {
        guard let view = AppSingleton.shared.navigateView(viewRef: .recoverpassViewController, storyboard: .Main) as? recoverpassViewController else {
            return
        }
        self.navigationController?.pushViewController(view, animated: true)
    }
}


