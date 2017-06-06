//
//  PlayerVC.swift
//  Ditango
//
//  Created by Felipe Silva on 06/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
