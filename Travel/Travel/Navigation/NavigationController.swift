//
//  NavigationController.swift
//  Travel
//
//  Created by Dev ILI on 09/08/2021.
//

import UIKit

enum BarButtonType {
    case Login
    case Singup
    case Skip
}

class NavigationController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Variables
    private var clickHandler: ((Int) -> Void)?
    private var type: BarButtonType = .Login
    let classBtn = UIButton(type: .system)
    lazy var classBarItem: Array = { () -> [UIBarButtonItem] in
        classBtn.tintColor = .black
        classBtn.addTarget(self, action: #selector(classBtnTapped), for: .touchUpInside)
        classBtn.imageEdgeInsets = UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6)
        classBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        let clasBarButton = UIBarButtonItem(customView: classBtn)
        return [clasBarButton]
    }()
    
    // MARK: - Constants
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // Navigation Settings
        setupNavigation()
    }
    
    func enableButton(_ options: BarButtonType) {
        
        // Add Navigation Buttons
        type = options
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.setRightBarButtonItems(self.classBarItem, animated: true)
        switch options {
        case .Login:
            self.classBtn.setTitle("Login", for: .normal)
            break
        case .Singup:
            self.classBtn.setTitle("Sign up", for: .normal)
            break
        case .Skip:
            self.classBtn.setTitle("Skip", for: .normal)
            classBtn.tintColor = .gray
            classBtn.imageEdgeInsets = UIEdgeInsets(top: 81, left: 0, bottom: 0, right: 37)
            classBtn.frame = CGRect(x: 0, y: 0, width: 26, height: 17)
            break
        }
    }
    // MARK: - Navigation / IBActions
    @objc func classBtnTapped() {
        guard let completion = self.clickHandler else {return}
                
        switch type {
        case .Login:
            completion(0)
            break
        case .Singup:
            completion(1)
            break
        case .Skip:
            completion(2)
            break
        }
    }
    
    // MARK: - Custom Funtions
    private func setupNavigation() {
        // Navigation Settings
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func watchForClickHandler(completion: @escaping (Int) -> Void) {
        self.clickHandler = completion
    }
}

// MARK: - View Extensions
