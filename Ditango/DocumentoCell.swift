//
//  DocumentoCell.swift
//  Ditango
//
//  Created by Felipe Silva on 05/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class DocumentoCell: UITableViewCell {
    @IBOutlet weak var tituloDocLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(nomeDocumento: String){
        tituloDocLbl.text = nomeDocumento
    }
}
