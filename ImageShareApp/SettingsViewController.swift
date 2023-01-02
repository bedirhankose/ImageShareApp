//
//  SettingsViewController.swift
//  ImageShareApp
//
//  Created by Bedirhan Köse on 02.01.23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
        
    }
    
   

}
