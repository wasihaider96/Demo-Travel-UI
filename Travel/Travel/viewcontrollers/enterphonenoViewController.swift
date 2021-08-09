//
//  enterphonenoViewController.swift
//  Travel
//
//  Created by Dev ILI on 09/08/2021.
//

import UIKit
import SKCountryPicker

class enterphonenoViewController: NavigationController  {
   
@IBOutlet weak var countryImageView: UIImageView!
    
    // MARK: - Func
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            //self.addSystemColor()
        }
        guard let country = CountryManager.shared.currentCountry else {
            self.countryImageView.isHidden = true
            return
        }
   }
    
    
@IBAction func pickCountryAction(_ sender: UIButton) {
        presentCountryPickerScene()
    }
}
   /// MARK: - Private Methods
     private extension enterphonenoViewController {
    
      func presentCountryPickerScene() {
            // Present country picker with `Section Control` enabled
            let countryController = CountryPickerWithSectionViewController.presentController(on: self) { [weak self] (country: Country) in
                
                guard let self = self else { return }
                
                self.countryImageView.isHidden = false
                self.countryImageView.image = country.flag
               // self.countryCodeButton.setTitle(country.dialingCode, for: .normal)
            }
            
            countryController.flagStyle = .circular
            countryController.favoriteCountriesLocaleIdentifiers = ["IN", "US"]
       
    }
}
