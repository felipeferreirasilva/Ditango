//
//  Login.swift
//  Ditango
//
//  Created by Felipe Silva on 01/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

class Login{
    private var _usuario = Usuario()
    private var remember: Bool = true
    private var urlService = "http://web.ditango.com.br/service/public/signin"
    private var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJEaXRhbmdvX0FwcF9LZXkifQ.b87vjldAY1LWHUMtPCVdjyvah4nL_xL3b-F6VSWLDww"

    var usuario: Usuario{
        get{
            return _usuario
        }set{
            _usuario = newValue
        }
    }
    
    func login(username: String, password: String) -> Usuario {
        let parameters: Parameters = ["username":username, "password":password, "remember":remember]
        let headers: HTTPHeaders = ["authorization": token]
        let url = urlService
        let response = Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON()
        if let JSON = response.result.value as? [String: Any]{
            let sessionContext = JSON["SessionContext"] as? [String: Any]
                if JSON.count == 3{
                    let userData = sessionContext?["user"] as? [String: Any]
                    
                    // Token
                    usuario.token = (sessionContext?["token"] as? String)!
                
                    // Nome
                    usuario.nome = (userData?["name"] as? String)!
                
                    // Email
                    usuario.email = (userData?["email"] as? String)!
                
                    // Id
                    usuario.id = (userData?["id"] as? Int)!
                
                    // Locale
                    usuario.locale = (userData?["locale"] as? String)!
                
                    // Mensagem
                    usuario.mensagem = (JSON["message"] as? String!)!
                }else{
                    usuario.mensagem = (JSON["message"] as? String!)!
                }
        }
        return usuario
    }
    
}
