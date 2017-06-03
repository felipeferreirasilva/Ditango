//
//  Cadastro.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

class Cadastro{
    private var _retorno: String!
    private var urlService = "http://web.ditango.com.br/service/public/register"
    private var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJEaXRhbmdvX0FwcF9LZXkifQ.b87vjldAY1LWHUMtPCVdjyvah4nL_xL3b-F6VSWLDww"
    
    var retorno: String{
        get{
            return _retorno
        }set{
            _retorno = newValue
        }
    }
    
    func cadastra(username: String, email: String, password: String, contractAgreement: Bool, locale: String) -> String{
        let parameters: Parameters = ["name":username, "email": email, "pw": password, "contractAgreement": contractAgreement, "locale": locale]
        let headers: HTTPHeaders = ["authorization": token]
        let url = urlService
        
        let response = Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON()
        
        if let JSON = response.result.value as? [String: Any]{
            _retorno = (JSON["message"] as? String)!
        }
       return _retorno
    }
}
