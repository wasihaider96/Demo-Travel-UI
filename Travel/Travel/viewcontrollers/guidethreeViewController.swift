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
        
        navigationItem.titleView = pageControl
        
        roundsidebutton.layer.cornerRadius = 23.0
        roundsidebutton.layer.borderWidth = 2
        roundsidebutton.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        roundside2.layer.cornerRadius = 23.0
        roundside2.layer.borderWidth = 2
        roundside2.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        imagesplash3.layer.cornerRadius = 5
        imagesplash3.clipsToBounds = true
    
        self.enableButton(.Skip)
        self.watchForClickHandler { tag in
            if tag == 2 {
                // action performed
                guard let view = AppSingleton.shared.navigateView(viewRef: .Login1ViewController, storyboard: .Main) as? Login1ViewController else {
                    return
                }
                self.navigationController?.pushViewController(view, animated: true)
            }
        }
        
    }
    override func viewDidLoad() {
        view.addSubview(pageControl)
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 39, height: 8))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 39, height: 8))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "Image.png")
        imageView.image = image
        logoContainer.addSubview(imageView)
        navigationItem.titleView = logoContainer

        // Do any additional setup after loading the view.
    }
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.currentPage = 2
        pageControl.backgroundColor = .clear
        pageControl.pageIndicatorTintColor = UIColor.lightGray;
        pageControl.currentPageIndicatorTintColor = UIColor.blue;
        return pageControl
    }()
    
    
    @IBAction func nextbtntapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "Login1ViewController") as? Login1ViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
