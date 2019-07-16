//
//  SignInViewController.swift
//  MChat
//
//  Created by Михаил on 16/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet var signInLabel: UILabel!
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        setupTitleLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignInButton()
        setupSignUpButton()
    }
}
