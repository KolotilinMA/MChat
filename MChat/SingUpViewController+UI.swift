//
//  SingUpViewController+UI.swift
//  MChat
//
//  Created by Михаил on 16/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

extension SignUpViewController {
    
    func setupTitleLabel() {
        // текст заголовка
        let title = "Sing Up"
        // создание кастом текста заголовка
        let attributedText = NSMutableAttributedString(string: title, attributes:
            [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!,
             NSAttributedString.Key.foregroundColor : UIColor.black
            ])
        // инициализация кастом заголовка в titleLabel
        titleTextLabel.attributedText = attributedText
    }
    
    func setupAvatar() {
        avatarImage.layer.cornerRadius = 40
        avatarImage.clipsToBounds = true
    }
    
    func setupFullnameTextField() {
        fullnameContainerView.layer.borderWidth = 1
        fullnameContainerView.layer.borderColor = UIColor(displayP3Red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        fullnameContainerView.layer.cornerRadius = 3
        fullnameContainerView.clipsToBounds = true
        
        fullnameTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        fullnameTextField.attributedPlaceholder = placeholderAttr
        fullnameTextField.textColor = UIColor(displayP3Red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupEmailTextField() {
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = UIColor(displayP3Red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        emailContainerView.layer.cornerRadius = 3
        emailContainerView.clipsToBounds = true
        
        emailTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Email adress", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        emailTextField.attributedPlaceholder = placeholderAttr
        emailTextField.textColor = UIColor(displayP3Red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
        // выбор типа клавиатуры
        emailTextField.keyboardType = .emailAddress
    }
    
    func setupPasswordTextField() {
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = UIColor(displayP3Red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        passwordContainerView.layer.cornerRadius = 3
        passwordContainerView.clipsToBounds = true
        
        passwordTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Password (8+ Characters)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        passwordTextField.attributedPlaceholder = placeholderAttr
        passwordTextField.textColor = UIColor(displayP3Red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
        // выбор типа ввода данных как секретные
        passwordTextField.isSecureTextEntry = true
    }
    
    func setupSingUpButton() {
        // кастомизация setupSingUpButton
        singUpButton.setTitle("Sing Up", for: UIControl.State.normal)
        singUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        singUpButton.backgroundColor = UIColor.black
        singUpButton.layer.cornerRadius = 5
        singUpButton.clipsToBounds = true
        singUpButton.setTitleColor(.white, for: UIControl.State.normal)
    }
    
    func setupSingInButton() {
        let attributedText = NSMutableAttributedString(string: "Already have an account?   ", attributes:
            [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
             NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)
            ])
        let attributedSubText = NSMutableAttributedString(string: "Sign In", attributes:
            [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18),
             NSAttributedString.Key.foregroundColor : UIColor.black])
        attributedText.append(attributedSubText)
        singInButton.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    
}
