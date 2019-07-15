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
        let title = "Create a new account"
        let subTitle = "\n\nLorem ipsum dolor sit sdflhlsdf dsdfhjs sdukyf syukyukf frysxhghjsg"
        
        let attributedText = NSMutableAttributedString(string: title, attributes:
            [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!,
            NSAttributedString.Key.foregroundColor : UIColor.black
            ])
        let attributedSubTitle = NSMutableAttributedString(string: subTitle, attributes:
            [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
             NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)
            ])
        
        attributedText.append(attributedSubTitle)
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.lineSpacing = 5
        
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragrapStyle, range: NSMakeRange(0, attributedText.length))
        
        titleLabel.numberOfLines = 0
        titleLabel.attributedText = attributedText
        
        
    }
}

