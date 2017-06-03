//
//  RecuperarSenhaVC.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class SenhaVC: UIViewController {
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var msgTxtField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func recuperarBtnPressed(_ sender: Any) {
        let recuperaSenha = Senha()
        let locale = "pt_BR"
        msgTxtField.text = recuperaSenha.recuperaSenha(email: emailTxtField.text!, locale: locale)
        emailTxtField.text=""
    }
}
