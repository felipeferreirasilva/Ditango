//
//  Usuario.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation

class Usuario{
    private var _nome: String = ""
    private var _id: Int! = 0
    private var _token: String = ""
    private var _locale: String = ""
    private var _email: String = ""
    private var _mensagem: String = ""
    
    var nome: String{
        get{
            return _nome
        }set{
            _nome = newValue
        }
    }
    
    var id: Int{
        get{
            return _id
        }set{
            _id = newValue
        }
    }
    
    var token: String{
        get{
            return _token
        }set{
            _token = newValue
        }
    }
    
    var locale: String{
        get{
            return _locale
        }set{
            _locale = newValue
        }
    }
    
    var email: String{
        get{
            return _email
        }set{
            _email = newValue
        }
    }
    
    var mensagem: String{
        get{
            return _mensagem
        }set{
            _mensagem = newValue
        }
    }
}
