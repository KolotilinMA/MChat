//
//  ViewController+UI.swift
//  MChat
//
//  Created by Михаил on 15/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

extension ViewController {
    
    func setupHeaderTitle() {
        // текст заголовка
        let title = "Create a new account"
        // текст подзаголовка
        let subTitle = "\n\nLorem ipsum dolor sit sdflhlsdf dsdfhjs sdukyf syukyukf frysxhghjsg"
        // создание кастом текста заголовка
        let attributedText = NSMutableAttributedString(string: title, attributes:
            [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!,
             NSAttributedString.Key.foregroundColor : UIColor.black
            ])
        // создание кастом текста подзаголовка
        let attributedSubTitle = NSMutableAttributedString(string: subTitle, attributes:
            [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
             NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)
            ])
        // добавление подзаголовка к заголовку
        attributedText.append(attributedSubTitle)
        // определение параграфа заголовка
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.lineSpacing = 5
        // добавление параграфа к заголовку
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragrapStyle, range: NSMakeRange(0, attributedText.length))
        // опредение количество строк на автоматическое
        titleLabel.numberOfLines = 0
        // инициализация кастом заголовка в titleLabel
        titleLabel.attributedText = attributedText
    }
    
    func setupOrLabel() {
        // кастомизация orLabel
        orLabel.text = "Or"
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textColor = UIColor(white: 0, alpha: 0.45)
        orLabel.textAlignment = .center
    }
    
    func setupTermsLabel() {
        // создание кастом текста Terms
        let attributedTermsText = NSMutableAttributedString(string: "By clicking 'Create a new account' you agree to our ", attributes:
            [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14),
             NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)
            ])
        let attributedSubTermsText = NSMutableAttributedString(string: "Terms of Service", attributes:
            [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14),
             NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)
            ])
        attributedTermsText.append(attributedSubTermsText)
        // добавление кастом текста Terms к Lable
        termsOfServiceLabel.attributedText = attributedTermsText
        termsOfServiceLabel.numberOfLines = 0
    }
    
    func setupFacebookButton() {
        // кастомизация signInFacebookButton
        signInFacebookButton.setTitle("Sign in Facebook", for: UIControl.State.normal)
        signInFacebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInFacebookButton.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/255, alpha: 1)
        signInFacebookButton.layer.cornerRadius = 5
        signInFacebookButton.clipsToBounds = true
        signInFacebookButton.setImage(UIImage(named: "icon-facebook"), for: UIControl.State.normal)
        signInFacebookButton.imageView?.contentMode = .scaleAspectFit
        signInFacebookButton.tintColor = .white
        signInFacebookButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: -15, bottom: 12, right: 0)
    }
    
    func setupGoogleButton() {
        // кастомизация signInFacebookButton
        signInGoogleButton.setTitle("Sign in Google", for: UIControl.State.normal)
        signInGoogleButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInGoogleButton.backgroundColor = UIColor(red: 223/255, green: 74/255, blue: 50/255, alpha: 1)
        signInGoogleButton.layer.cornerRadius = 5
        signInGoogleButton.clipsToBounds = true
        signInGoogleButton.setImage(UIImage(named: "icon-google"), for: UIControl.State.normal)
        signInGoogleButton.imageView?.contentMode = .scaleAspectFit
        signInGoogleButton.tintColor = .white
        signInGoogleButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: -35, bottom: 12, right: 0)
    }
    
    func setupCreateAccountButton() {
        // кастомизация createAccountButton
        createAccountButton.setTitle("Create a new account", for: UIControl.State.normal)
        createAccountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        createAccountButton.backgroundColor = UIColor.black
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.clipsToBounds = true
    }
}
