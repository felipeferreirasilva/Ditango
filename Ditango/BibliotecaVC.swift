//
//  BibliotecaVC.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class BibliotecaVC: UIViewController {
    private var _usuario: Usuario!
    private var documentoList = DocumentoList()
    
    var usuario: Usuario{
        get{
            return _usuario
        }set{
            _usuario = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        documentoList.listaDocumento(token: _usuario.token, searchExpression: 0, size: 10, start: 0)
      
        
        // CHAMAR DOCUMENTOLIST PASSANDO USUARIO.TOKEN 
        // RECEBER OBJETO DE DOCUMENTOLIST E PREENCHER TABELA
    }
}
