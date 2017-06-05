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
    private var _documentos = [Documento]()
    private var _msg: String!
    private var urlService = "http://web.ditango.com.br/service/document/search"
    
    var documentos: [Documento]{
        get{
            return _documentos
        }set{
            _documentos = newValue
        }
    }
    
    var msg: String{
        get{
            return _msg
        }set{
            _msg = newValue
        }
    }

    func listaDocumento(token: String, searchExpression: Int, size: Int, start: Int) -> [Documento]{
        let parameters: Parameters = ["searchExpression": searchExpression, "size": size, "start": start]
        let headers: HTTPHeaders = ["authorization": token]
        let url = urlService
        let response = Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON()
        if let JSON = response.result.value{
            let docsArray = JSON as! [[String: Any]]
            
            print(JSON)
            for i in 0..<docsArray.count {
                let _documento = Documento()
                _documento.nome = docsArray[i]["name"]! as! String
                _documento.id = docsArray[i]["id"]! as! Int
                _documento.type = docsArray[i]["type"]! as! String
                _documento.tamanho = docsArray[i]["size"]! as! Int
                _documento.audioDocs = docsArray[i]["audioDocs"] as! [[String: Any]]
                _documentos.append(_documento)
            }
           
            // ALIMENTAR OBJETO _DOCUMENTO
        }
         return _documentos
    }
    
    
}
