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
        setupHeaderTitle()
        setupOrLabel()
        setupTermsLabel()
        setupFacebookButton()
        setupGoogleButton()
        setupCreateAccountButton()
        
    }
}

