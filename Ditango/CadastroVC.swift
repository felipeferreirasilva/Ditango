//
//  CadastroVC.swift
//  Ditango
//
//  Created by Felipe Silva on 02/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class CadastroVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var nomeTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var emailConfirmTxtField: UITextField!
    @IBOutlet weak var senhaTxtField: UITextField!
    @IBOutlet weak var idiomaLbl: UITextField!
    @IBOutlet weak var idiomaPicker: UIPickerView!
    @IBOutlet weak var formularioSV: UIStackView!
    @IBOutlet weak var msgLbl: UITextView!
    @IBOutlet weak var cadastrarBtn: UIButton!
    
    var idiomas: [String] = ["Portugues", "Ingles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        idiomaPicker.dataSource = self
        idiomaPicker.delegate = self
        idiomaLbl.text = idiomas[0]
    }
    
    @IBAction func voltarBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func idiomaBtnPressed(_ sender: Any) {
        formularioSV.isHidden = true
        idiomaPicker.isHidden = false
    }
    
    @IBAction func cadastrarBtnPressed(_ sender: Any) {
        let cadastro = Cadastro()
        let username = nomeTxtField.text
        let email = emailTxtField.text
        let password = senhaTxtField.text
        let contratoAceito = true
        var locale = "pt_BR"
        if idiomaLbl.text == "Ingles"{
            locale = "en_US"
        }
        
        if(!(username?.isEmpty)! && !(email?.isEmpty)! && !(password?.isEmpty)!){
            msgLbl.text = cadastro.cadastra(username: username!, email: email!, password: password!, contractAgreement: contratoAceito, locale: locale)

        }else{
            msgLbl.text = "Preencha todos os campos"
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return idiomas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return idiomas[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        idiomaLbl.text = idiomas[row]
        idiomaPicker.isHidden = true
        formularioSV.isHidden = false
    }
    
    
    
}
