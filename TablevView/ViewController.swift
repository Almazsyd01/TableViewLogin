//
//  ViewController.swift
//  TablevView
//
//  Created by Mac on 22/3/24.
//

import UIKit

class IntroLoginViewController: UIViewController {
    
    private let titleLogin: UILabel = {
        let view = UILabel()
        view.text = "Login"
        view.font = UIFont(name: "Urbanist-Bold", size: 18)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let imageUser: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "User")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let descr: UILabel = {
        let view = UILabel()
        view.text = "Welcome back, Rohit thakur"
        view.font = UIFont(name: "Urbanist-Regular", size: 14)
        view.textColor = .systemGray2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let imageWoman: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Woman")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let titleMobaleNumber: UILabel = {
        let view = UILabel()
        view.text = "Enter Your Mobile Number"
        view.font = UIFont(name: "Poppins-Bold", size: 17)
        view.textColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let numberTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter Number"
        view.textColor = .gray
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 16
        view.layer.borderColor = UIColor.gray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let loginBT: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .red
        view.setTitle("Login", for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 20
//        view.addTarget(self, action: #selector(showSecondView), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        
        view.addSubview(titleLogin)
        
        NSLayoutConstraint.activate(
            [titleLogin.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
             titleLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        view.addSubview(imageUser)
        
        NSLayoutConstraint.activate(
            [imageUser.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
             imageUser.leadingAnchor.constraint(equalTo: titleLogin.leadingAnchor, constant: 45)
            ])
        
        view.addSubview(descr)
        
        NSLayoutConstraint.activate(
            [descr.bottomAnchor.constraint(equalTo: titleLogin.bottomAnchor, constant: 20),
             descr.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26)
            ])
        
        view.addSubview(imageWoman)
        
        NSLayoutConstraint.activate(
            [imageWoman.topAnchor.constraint(equalTo: descr.topAnchor, constant: 100),
             imageWoman.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(titleMobaleNumber)
        
        NSLayoutConstraint.activate(
            [titleMobaleNumber.bottomAnchor.constraint(equalTo: imageWoman.bottomAnchor, constant: 30),
             titleMobaleNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(numberTF)
        
        NSLayoutConstraint.activate(
            [numberTF.bottomAnchor.constraint(equalTo: titleMobaleNumber.bottomAnchor, constant: 70),
             numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             numberTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        view.addSubview(loginBT)
        
        NSLayoutConstraint.activate(
            [loginBT.bottomAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 130),
             loginBT.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
             loginBT.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
             loginBT.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
}
