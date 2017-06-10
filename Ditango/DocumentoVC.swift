//
//  DocumentoVC.swift
//  Ditango
//
//  Created by Felipe Silva on 05/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class DocumentoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var nomeLbl: UILabel!
    @IBOutlet weak var tipoLbl: UILabel!
    @IBOutlet weak var tamanhoLbl: UILabel!
    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var audioTable: UITableView!
    
    
    private var _documento: Documento!
    
    var documento: Documento{
        get{
            return _documento
        }set{
            _documento = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        audioTable.dataSource = self
        audioTable.delegate = self
        idLbl.text = String(_documento.id)
        nomeLbl.text = _documento.nome
        tipoLbl.text = _documento.type
        tamanhoLbl.text = String(_documento.tamanho)
    }

    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _documento.audioDocs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = audioTable.dequeueReusableCell(withIdentifier: "AudioCell", for: indexPath) as? AudioCell {
            let audioTitulo = _documento.audioDocs[indexPath.row]["fileName"]
            cell.updateUI(nomeAudio: audioTitulo as! String)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PlayerVC", sender: _documento.audioDocs[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayerVC"{
            let playerVc = segue.destination as! PlayerVC
            playerVc.audio = sender as! [String: Any]!
            playerVc.token = _documento.token
        }
    }
}
