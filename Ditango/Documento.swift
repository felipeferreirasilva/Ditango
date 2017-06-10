//
//  Documento.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation

class Documento{
    private var _id: Int = 0
    private var _nome: String = ""
    private var _nomeArquivo: String = ""
    private var _locale: String = ""
    private var _type: String = ""
    private var _dataUpload: Int = 0
    private var _tamanho: Int = 0
    private var _ativo: Bool = false
    private var _audioDocs: [[String: Any]]!
    private var _token: String!
    
    var id: Int{
        get{
            return _id
        }set{
            _id = newValue
        }
    }
    
    var nome: String{
        get{
            return _nome
        }set{
            _nome = newValue
        }
    }
    
    var nomeArquivo: String{
        get{
            return _nomeArquivo
        }set{
            _nomeArquivo = newValue
        }
    }
    
    var locale: String{
        get{
            return _locale
        }set{
            _locale = newValue
        }
    }
    
    var type: String{
        get{
            return _type
        }set{
            _type = newValue
        }
    }
    
    var dataUpload: Int{
        get{
            return _dataUpload
        }set{
            _dataUpload = newValue
        }
    }
    
    var tamanho: Int{
        get{
            return _tamanho
        }set{
            _tamanho = newValue
        }
    }
    
    var ativo: Bool{
        get{
            return _ativo
        }set{
            _ativo = newValue
        }
    }
    
    var audioDocs: [[String: Any]]{
        get{
            return _audioDocs
        }set{
            _audioDocs = newValue
        }
    }
    
    var token: String{
        get{
            return _token
        }set{
            _token = newValue
        }
    }
}
