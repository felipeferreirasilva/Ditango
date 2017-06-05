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
    let docList = DocumentoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func entrarBtnPresed(_ sender: Any) {
//        usuario = login.login(username: usernameTxtField.text!, password: passwordTxtField.text!)
        usuario = login.login(username: "felipeferreirasilva@gmail.com", password: "mudar123")
        if usuario.mensagem == "Successful operation."{
            performSegue(withIdentifier: "BibliotecaVC", sender: usuario)
        }else{
            msgLbl.text = usuario.mensagem
        }
    }
    
    
    @IBAction func esqueceuSenhaBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "SenhaVC", sender: nil)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BibliotecaVC"{
            let tabVc = segue.destination as! UITabBarController
            let bibliotecaVc = tabVc.viewControllers?.first as! BibliotecaVC
            bibliotecaVc.usuario = (sender as? Usuario)!
        }
        
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
