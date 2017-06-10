//
//  Player.swift
//  Ditango
//
//  Created by Felipe Silva on 09/06/2017.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import AVFoundation

class Player{
    var audio: AVAudioPlayer!
    
    func playAudio(url: String){
        let audioUrl = URL(string: url)
        do{
            try audio = AVAudioPlayer(contentsOf: audioUrl!)
            audio.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        if audio.isPlaying{
            audio.stop()
        }
        
        audio.play()
    }
}
