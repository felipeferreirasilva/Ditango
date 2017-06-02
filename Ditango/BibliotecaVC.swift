//
//  BibliotecaVC.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class BibliotecaVC: UIViewController {
    private var _usuario = Usuario()
    
    var usuario: Usuario{
        get{
            return _usuario
        }set{
            _usuario = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
