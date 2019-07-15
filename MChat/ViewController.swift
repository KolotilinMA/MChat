//
//  ViewController.swift
//  MChat
//
//  Created by Михаил on 15/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var signInFacebookButton: UIButton!
    @IBOutlet var signInGoogleButton: UIButton!
    @IBOutlet var createAccountButton: UIButton!
    @IBOutlet var termsOfServiceLabel: UILabel!
    @IBOutlet var orLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


    func setupUI() {
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
        // кастомизация orLabel
        orLabel.text = "Or"
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textColor = UIColor(white: 0, alpha: 0.45)
        orLabel.textAlignment = .center
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
}

