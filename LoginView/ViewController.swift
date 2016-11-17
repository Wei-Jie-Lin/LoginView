//
//  ViewController.swift
//  LoginView
//
//  Created by 林暐潔 on 2016/11/16.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Button
    
    let loginButton = UIButton(type: .system)        //產生按鈕
    
    // MARK: - TextField
    
    let accountTextField = UITextField(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 125, y: 100, width: 250, height: 30))
    
    let passwordTextField = UITextField(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 125, y: 150, width: 250, height: 30))
    
    // 初始化：
    func textFieldInitial() {
        
        //accountTextField 帳號
        
        accountTextField.tag = 0
        
        accountTextField.clearsOnBeginEditing = true
        accountTextField.clearButtonMode = .always
        
        accountTextField.placeholder = "請輸入帳號："
        accountTextField.borderStyle = .line
        
        accountTextField.returnKeyType = .next
        
        view.addSubview(accountTextField)
        
        //passwordTextField 密碼
        
        passwordTextField.tag = 1
        
        passwordTextField.clearsOnBeginEditing = true
        passwordTextField.clearButtonMode = .always
        
        passwordTextField.placeholder = "請輸入密碼："
        passwordTextField.borderStyle = .line
        
        passwordTextField.returnKeyType = .done
        
        passwordTextField.isSecureTextEntry = true
        
        view.addSubview(passwordTextField)
        
        //程式產生TextField 必須連結delegate 代替拉線。
        self.accountTextField.delegate = self
        self.passwordTextField.delegate = self
        
        //LoginButton 登入
        
        loginButton.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 40, y: 200, width: 80, height: 40)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        loginButton.addTarget(self, action: #selector (ViewController.nextPage), for: UIControlEvents.touchUpInside)
        
        view.addSubview(loginButton)
        
    }

    // 收鍵盤及按next跳下一個TextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            passwordTextField.becomeFirstResponder()
            
        } else if textField.tag == 1 {
            passwordTextField.resignFirstResponder()
            
        }
        return true
    }
    
    // 登入換頁傳值：
    func nextPage() {
        
        let account = accountTextField.text!
        let password = passwordTextField.text!
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "LoginPage") as! LoginPage
        
        controller.label.text = "帳號：\(account)\n密碼：\(password)\n\n\t歡迎登入"
        
//        controller.modalTransitionStyle = .flipHorizontal
        
        self.present(controller, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldInitial()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

