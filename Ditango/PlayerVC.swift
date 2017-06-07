//
//  PlayerVC.swift
//  Ditango
//
//  Created by Felipe Silva on 06/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController {
    @IBOutlet weak var musicaTituloPlayerLbl: UILabel!
    
    private var _audio: [String: Any]!
    
    var audio: [String: Any]{
        get{
            return _audio
        }set{
            _audio = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicaTituloPlayerLbl.text = _audio["name"] as? String
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
