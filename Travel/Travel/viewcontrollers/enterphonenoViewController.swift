//
//  enterphonenoViewController.swift
//  Travel
//
//  Created by Dev ILI on 09/08/2021.
//

import UIKit
import SKCountryPicker

class enterphonenoViewController: UIViewController  {
   
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var logintapedbtn: UIButton!
    @IBOutlet weak var countrycodebtn: UIButton!
    
    // MARK: - Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logintapedbtn.layer.cornerRadius = 23.0
        logintapedbtn.layer.borderWidth = 2
        logintapedbtn.layer.borderColor = #colorLiteral(red: 0.2387692198, green: 0.4335318844, blue: 1, alpha: 1)
        
        guard let country = CountryManager.shared.currentCountry else {
            self.countryImageView.isHidden = true
            return
        }
        
    
    countryImageView.image = country.flag
  
    
    }
    
    
    
    @IBAction func loginbtntaped(_ sender: UIButton) {
        
    }
@IBAction func pickCountryAction(_ sender: UIButton) {
        presentCountryPickerScene()
    }
    @IBAction func pickCountryCode(_ sender: UIButton) {
        
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
                self.countrycodebtn.setTitle(country.dialingCode, for: .normal)
            }
            
            countryController.flagStyle = .circular
            countryController.favoriteCountriesLocaleIdentifiers = ["US", "PK"]
       
    }
}
