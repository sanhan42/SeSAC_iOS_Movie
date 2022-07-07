//
//  SignUpViewController.swift
//  Movie
//
//  Created by 한상민 on 2022/07/07.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationsTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var additionSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTextField.textColor = .white
        contactTextField.backgroundColor = .black
        contactTextField.placeholder = "Email or Phone Number"
        contactTextField.keyboardType = .emailAddress
        contactTextField.isSecureTextEntry = true
        contactTextField.textAlignment = .center
        contactTextField.borderStyle = .roundedRect
        
        passwordTextField.textColor = .white
        passwordTextField.backgroundColor = .black
        passwordTextField.placeholder = "비밀번호"
        passwordTextField.keyboardType = .emailAddress
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textAlignment = .center
        passwordTextField.borderStyle = .roundedRect

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
