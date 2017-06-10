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
    private var playerM = Player()
    private var audioM = Audio()
    private var _audio: [String: Any]!
    private var _token: String!
    
    var audio: [String: Any]{
        get{
            return _audio
        }set{
            _audio = newValue
        }
    }
    
    var token: String{
        get{
            return _token
        }set{
            _token = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicaTituloPlayerLbl.text = _audio["name"] as? String
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playBtnPressed(_ sender: Any) {
        let url = audioM.getAudioURL(id: _audio["id"] as! Int, token: token)
        print(url)
        //playerM.playAudio(url: url)
    }
    
}
