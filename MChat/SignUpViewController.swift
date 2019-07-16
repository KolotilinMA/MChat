//
//  SignUpViewController.swift
//  MChat
//
//  Created by Михаил on 16/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var titleTextLabel: UILabel!
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var fullnameContainerView: UIView!
    @IBOutlet var fullnameTextField: UITextField!
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var singUpButton: UIButton!
    @IBOutlet var singInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        
        setupTitleLabel()
        setupAvatar()
        setupFullnameTextField()
        setupEmailTextField()
        setupPasswordTextField()
        setupSingUpButton()
        setupSingInButton()
    }

}
