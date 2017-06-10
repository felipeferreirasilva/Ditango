//
//  Audio.swift
//  Ditango
//
//  Created by Felipe Silva on 09/06/2017.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

class Audio {
    private var urlService = "http://web.ditango.com.br/service/audio/url/"
    private var audioUrl: String = ""
    
    func getAudioURL(id: Int, token: String) -> String {
        let headers: HTTPHeaders = ["authorization": token]
        let url = "\(urlService)\(id)"
        
        let response = Alamofire.request(url, method: .get, headers: headers).responseString()
        
        if let retorno = response.result.value{
            audioUrl = retorno
        }
        return audioUrl
    }
}
