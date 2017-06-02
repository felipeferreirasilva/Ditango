//
//  RecuperaSenha.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

class RecuperaSenha{
    private var _msg: String!
    private var urlService = "http://web.ditango.com.br/service/public/recover"
    private var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJEaXRhbmdvX0FwcF9LZXkifQ.b87vjldAY1LWHUMtPCVdjyvah4nL_xL3b-F6VSWLDww"
    
    var msg: String{
        get{
            return _msg
        }set{
            _msg = newValue
        }
    }
    
    func recuperaSenha(email: String, locale: String) -> String{
        let parameters: Parameters = ["email": email, "locale": locale]
        let headers: HTTPHeaders = ["authorization": token]
        let url = urlService
        
        let response = Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON()
        
        if let JSON = response.result.value as? [String: Any]{
            _msg = JSON["message"] as? String
        }
        return msg
    }
}
