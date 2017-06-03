//
//  Documento.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

class DocumentoList{
    private var _documento = [Documento]()
    private var _msg: String!
    private var urlService = "http://web.ditango.com.br/service/document/search"
    
    var documento: [Documento]{
        get{
            return _documento
        }set{
            _documento = newValue
        }
    }
    
    var msg: String{
        get{
            return _msg
        }set{
            _msg = newValue
        }
    }

    func listaDocumento(token: String, searchExpression: Int, size: Int, start: Int){
        let parameters: Parameters = ["searchExpression": searchExpression, "size": size, "start": start]
        let headers: HTTPHeaders = ["authorization": token]
        let url = urlService
        let response = Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON()
        if let JSON = response.result.value{
            let docsArray = JSON as! [[String: Any]]
            
            for i in 0..<docsArray.count {
                print(docsArray[i]["name"]!)
            }
            

           
            // ALIMENTAR OBJETO _DOCUMENTO
        }
        // RETORNAR _DOCUMENTO
    }
}
