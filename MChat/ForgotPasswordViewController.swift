//
//  ForgotPasswordViewController.swift
//  MChat
//
//  Created by Михаил on 16/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        
        setupEmailTextField()
        setupResetButton()
    }
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
