//
//  SignUpViewController.swift
//  MChat
//
//  Created by Михаил on 16/07/2019.
//  Copyright © 2019 Mikhail Kolotilin. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class SignUpViewController: UIViewController {
    @IBOutlet var titleTextLabel: UILabel!
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var fullnameContainerView: UIView!
    @IBOutlet var fullnameTextField: UITextField!
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    
    var image: UIImage? = nil
    
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
        setupSignUpButton()
        setupSignInButton()
    }
    @IBAction func dismissAcdion(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func signUpButtonDidTapped(_ sender: Any) {
        
        guard let imageSelected = self.image else {
            print("Avatar is nil")
            return
        }
        
        guard let imageData = imageSelected.jpegData(compressionQuality: 0.4) else { return }
        
        Auth.auth().createUser(withEmail: "test2@mail.ru", password: "123456") { (authDataResult, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            if let authData = authDataResult {
                print(authData.user.email)
                var dict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email,
                    "profileImageURL": "",
                    "status": "Welcome to MChat"
                ]
                
                let storageRef = Storage.storage().reference(forURL: "gs://mchat-61373.appspot.com")
                let storageProfileRef = storageRef.child("profile").child(authData.user.uid)
                let metaData = StorageMetadata()
                
                metaData.contentType = "image/jpg"
                storageProfileRef.putData(imageData, metadata: metaData, completion: { (storageMetaData, error) in
                    if error != nil {
                        print(error?.localizedDescription)
                        return
                    }
                    
                    storageProfileRef.downloadURL(completion: { (url, error) in
                        if let metaImageUrl = url?.absoluteString {
                            dict["profileImageURL"] = metaImageUrl
                            
                            Database.database().reference().child("users")
                                .child(authData.user.uid).updateChildValues(dict, withCompletionBlock: { (error, ref) in
                                    if error == nil {
                                        print("Done")
                                    }
                                })
                        }
                    })
                })
            }
        }
    }
    
}
