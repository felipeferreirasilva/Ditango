//
//  LoginVC.swift
//  Ditango
//
//  Created by Felipe Silva on 01/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var msgLbl: UITextView!
    
    var usuario = Usuario()
    let login = Login()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func entrarBtnPresed(_ sender: Any) {
        usuario = login.login(username: usernameTxtField.text!, password: passwordTxtField.text!)
        if usuario.mensagem == "Successful operation."{
            performSegue(withIdentifier: "BibliotecaVC", sender: usuario)
        }else{
            msgLbl.text = usuario.mensagem
        }
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
