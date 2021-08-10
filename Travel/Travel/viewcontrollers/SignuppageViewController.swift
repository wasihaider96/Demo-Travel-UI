//
//  SignuppageViewController.swift
//  Travel
//
//  Created by Dev ILI on 06/08/2021.
//

import UIKit

class SignuppageViewController: NavigationController {
    @IBOutlet weak var nextbtntaped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextbtntaped.layer.cornerRadius = 23.0
        nextbtntaped.layer.borderWidth = 2
        nextbtntaped.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        self.enableButton(.Login)
    
        self.watchForClickHandler { tag in
            if tag == 0 {
                // action performed
                guard let view = AppSingleton.shared.navigateView(viewRef: .login2, storyboard: .Main) as? login2 else {
                    return
                }
                self.navigationController?.pushViewController(view, animated: true)
            }
            if tag == 1 {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func nextbtntaped(_ sender: UIButton) {
        guard let view = AppSingleton.shared.navigateView(viewRef: .enterphonenoViewController, storyboard: .Main) as? enterphonenoViewController else {
            return
        }
        self.navigationController?.pushViewController(view, animated: true)
    }
}
