//
//  ViewController.swift
//  Ditango
//
//  Created by Felipe Silva on 28/05/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class MainVC: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "LoginVC", sender: nil)
    }
    
    @IBAction func cadastroBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "CadastroVC", sender: nil)
    }    
}

