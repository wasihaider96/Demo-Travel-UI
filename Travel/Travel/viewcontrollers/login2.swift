//
//  login2.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit
import PopupDialog

class login2: NavigationController {
    
    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var loginbtntapped: UIButton!
    @IBOutlet weak var passtxtfield: UITextField!
    @IBOutlet weak var eyebtntaped: UIButton!
    
    
    var is_show = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passtxtfield.isSecureTextEntry = true
        loginbtntapped.layer.cornerRadius = 23.0
        loginbtntapped.layer.borderWidth = 2
        loginbtntapped.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        self.enableButton(.Singup)
        
        self.watchForClickHandler { tag in
            if tag == 1 {
                if let controllers = self.navigationController?.viewControllers {
                    for controller in controllers {
                        if controller.isKind(of: SignuppageViewController.self) {
                            print("Login is in stack")
                            //Your Process
                            self.navigationController?.popToViewController(controller, animated: true)
                            return
                        }
                    }
                }
                guard let view = AppSingleton.shared.navigateView(viewRef: .SignuppageViewController, storyboard: .Main) as? SignuppageViewController else {
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
    @IBAction func loginbtntaped(_ sender: UIButton) {
        
        if let email = emailtextfield.text {
            if email.isValidEmail() {
                
            } else {
                let popup = PopupDialog(title: title, message: "correct")
            }
        }
        
        
    }
}
   extension String {
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
