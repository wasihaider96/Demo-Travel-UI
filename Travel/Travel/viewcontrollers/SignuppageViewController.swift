//
//  SignuppageViewController.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit

class SignuppageViewController: NavigationController {
    @IBOutlet weak var nextbtntaped: UIButton!
    @IBOutlet weak var passtxtfield: UITextField!
    @IBOutlet weak var eyebtntaped: UIButton!
    
    var is_show = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passtxtfield.isSecureTextEntry = true
        nextbtntaped.layer.cornerRadius = 23.0
        nextbtntaped.layer.borderWidth = 2
        nextbtntaped.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        self.enableButton(.Login)
        
        self.watchForClickHandler { tag in
            if tag == 0 {
                if let controllers = self.navigationController?.viewControllers {
                    for controller in controllers {
                        if controller.isKind(of: login2.self) {
                            print("Sign Up is in stack")
                            //Your Process
                            self.navigationController?.popToViewController(controller, animated: true)
                            return
                        }
                    }
                }
                
                guard let view = AppSingleton.shared.navigateView(viewRef: .login2, storyboard: .Main) as? login2 else {
                    return
                }
                self.navigationController?.pushViewController(view, animated: true)
            }
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func eyebtntaped(_ sender: UIButton) {
        if(is_show){
            passtxtfield.isSecureTextEntry = true
            eyebtntaped.setImage(UIImage(named: "eye"), for: .normal)
            is_show = false
        }else{
            passtxtfield.isSecureTextEntry = false
            eyebtntaped.setImage(UIImage(named: "offeye"), for: .normal)
            is_show = true
        }
    }
    @IBAction func nextbtntaped(_ sender: UIButton) {
        guard let view = AppSingleton.shared.navigateView(viewRef: .enterphonenoViewController, storyboard: .Main) as? enterphonenoViewController else {
            return
        }
        self.navigationController?.pushViewController(view, animated: true)
    }
}
