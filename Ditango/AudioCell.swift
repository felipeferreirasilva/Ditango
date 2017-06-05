//
//  AudioCell.swift
//  Ditango
//
//  Created by Felipe Silva on 05/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class AudioCell: UITableViewCell {
    @IBOutlet weak var audioTituloLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(nomeAudio: String){
        audioTituloLbl.text = nomeAudio
    }
}
