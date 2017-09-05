//
//  LoginController.swift
//  Chat Cactus
//
//  Created by Reggie Nora on 9/1/17.
//  Copyright © 2017 Reggie Nora. All rights reserved.
//

import UIKit
class LoginController: UIViewController {
    
    

    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let profileImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Cactus")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let LoginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 152, g: 204 , b:   0)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return button
    
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
        
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let nameSeparatorView: UIView = {
        let view = UIView ()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailSeparatorView: UIView = {
        let view = UIView ()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
            //This is the background color of the login screen
            override func viewDidLoad() {
                super.viewDidLoad()
            
            view.backgroundColor = UIColor(r: 255, g: 255, b: 255)
            
            
            
            view.addSubview(inputsContainerView)
            view.addSubview(LoginRegisterButton)
            view.addSubview(nameTextField)
            view.addSubview(nameSeparatorView)
            view.addSubview(passwordTextField)
            view.addSubview(emailSeparatorView)
            view.addSubview(emailTextField)
            view.addSubview(profileImageView)
            
            
            setupInputsContainerView()
            setupLoginRegisterButton()
            setupProfileImageView()
            
            }
    
    func setupInputsContainerView() {
        //Requirements are x, y, width, height constraints. This is how we program in the constraints for the center login.
        
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -500).isActive = true
        
        
        
        
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        //Constraints :  need x,y, width and height
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        //Constraints :  need x,y, width and height
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        //Constraints :  need x,y, width and height
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
    
    
        
       

        
    }
    
    func setupProfileImageView() {
        //Constraints :  need x,y, width and height
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
    }
    
    func setupLoginRegisterButton() {
        //Requirements are x, y, width, height constraints. This is how we program in the constraints for the center login.
        LoginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        LoginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        
        //this is for how wide the button is.
        LoginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        LoginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    //This changes the color of the status bar when switching to login screen.

       override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}

    //This is a shortcut to prevent retyping the same thing. This is a convenience initilizer. This sets values for you to be able to call later.
extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    }
