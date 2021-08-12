//
//  GuideTwoViewController.swift
//  Travel
//
//  Created by Dev ILI on 05/08/2021.
//

import UIKit

class GuideTwoViewController: NavigationController {
    
    @IBOutlet weak var imgsplash2: UIImageView!
    @IBOutlet weak var roundsidebutton: UIButton!
    @IBOutlet weak var roundside2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pageControl)
        self.navigationItem.setHidesBackButton(true, animated: false)
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 39, height: 8))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 39, height: 8))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "Image.png")
        imageView.image = image
        logoContainer.addSubview(imageView)
        navigationItem.titleView = logoContainer

}
    override func viewDidLayoutSubviews() {
        navigationItem.titleView = pageControl
        
        
        roundsidebutton.layer.cornerRadius = 23.0
        roundsidebutton.layer.borderWidth = 2
        roundsidebutton.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        roundside2.layer.cornerRadius = 23.0
        roundside2.layer.borderWidth = 2
        roundside2.layer.borderColor = #colorLiteral(red: 1, green: 0.8281960001, blue: 0, alpha: 1)
        
        imgsplash2.layer.cornerRadius = 5
        imgsplash2.clipsToBounds = true
    
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
        //self.navigationController?.popViewController(animated: true)
    }
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.currentPage = 1
        pageControl.backgroundColor = .clear
        pageControl.pageIndicatorTintColor = UIColor.lightGray;
        pageControl.currentPageIndicatorTintColor = UIColor.blue;
        return pageControl
    }()
    

    @IBAction func nexttapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "guidethreeViewController") as? guidethreeViewController {
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
