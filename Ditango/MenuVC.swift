//
//  MenuVC.swift
//  Ditango
//
//  Created by Felipe Silva on 07/06/2017.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("MenuVC")
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
