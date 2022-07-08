//
//  SignUpViewController.swift
//  Movie
//
//  Created by 한상민 on 2022/07/07.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationsTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet var textFiledList: [UITextField]!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var additionSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTextField(textFieldList: textFiledList)
        setPlaceholder(textField: contactTextField, placeholder: "이메일 주소 또는 전화번호")
        setPlaceholder(textField: passwordTextField, placeholder: "비밀번호")
        setPlaceholder(textField: nicknameTextField, placeholder: "닉네임")
        setPlaceholder(textField: locationsTextField, placeholder: "위치")
        setPlaceholder(textField: codeTextField, placeholder: "추천 코드 입력")
        designButton(signUpButton, title: "회원가입")
        designSwitch(additionSwitch)
        self.contactTextField.delegate = self
        self.passwordTextField.delegate = self
        self.nicknameTextField.delegate = self
        self.locationsTextField.delegate = self
        self.codeTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func designTextField(textFieldList list:[UITextField]){
        for item in list{
            item.textColor = .white
            item.backgroundColor = .gray
            item.keyboardType = .emailAddress
            //item.isSecureTextEntry = true
            item.textAlignment = .center
            item.borderStyle = .roundedRect
        }
    }
    
    func setPlaceholder(textField tf:UITextField, placeholder str:String) {
        //tf.placeholder = str
        tf.attributedPlaceholder = NSAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    func designButton(_ b:UIButton, title str:String){
        b.backgroundColor = .white
        b.layer.cornerRadius = 6        //b.setTitle(str, for: .normal)
        //b.setTitleColor(.black, for: .normal)
        //b.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .bold) // 이렇게는 왜 적용이 안될까?
        let attribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17.0, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor.black]
        let attributedTitle = NSAttributedString(string: "회원가입", attributes: attribute)
        b.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func designSwitch(_ s:UISwitch){
        s.setOn(true, animated: true)
        s.onTintColor = .systemRed
        s.thumbTintColor = .white
    }
    @IBAction func stopEditing(_ sender: UIGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//           textField.resignFirstResponder() // TextField 비활성화
        switch textField { // return 클릭시 다음 textField로 이동하고, 마지막 textField에서는 이동대신 회원가입 버튼을 누르도록 설정
        case contactTextField:
            print(self.passwordTextField.canBecomeFirstResponder)
            self.passwordTextField.becomeFirstResponder()
        case passwordTextField:
            self.nicknameTextField.becomeFirstResponder()
        case nicknameTextField:
            self.locationsTextField.becomeFirstResponder()
        case locationsTextField:
            self.codeTextField.becomeFirstResponder()
        default:
            self.signUpButtonClicked(self.signUpButton)
        }
        return true
    }
}
