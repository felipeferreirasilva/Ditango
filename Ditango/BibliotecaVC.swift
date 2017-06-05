//
//  BibliotecaVC.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class BibliotecaVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var docTable: UITableView!
    private var _usuario: Usuario!
    private var documentoList = DocumentoList()
    private var documento = [Documento]()
    
    var usuario: Usuario{
        get{
            return _usuario
        }set{
            _usuario = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docTable.dataSource = self
        docTable.delegate = self
        documento = documentoList.listaDocumento(token: _usuario.token, searchExpression: 0, size: 10, start: 0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = docTable.dequeueReusableCell(withIdentifier: "DocumentoCell", for: indexPath) as? DocumentoCell {
            let docTitulo = documento[indexPath.row].nome.uppercased()
            cell.updateUI(nomeDocumento: docTitulo)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return documento.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
