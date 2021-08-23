//
//  ViewController.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit
import PureLayout


class ViewController: UIViewController {
    
    lazy var avater: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image03.jpg"))
        imageView.autoSetDimensions(to: CGSize(width: 128.0, height: 128.0))
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 64.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    var testButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.tintColor = .red
        button.backgroundColor = .black
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 20.0
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    lazy var testField: UITextField = {
        let field = UITextField()
        field.text = "i am testing"
        field.textColor = .black
        field.contentVerticalAlignment = .top
        field.backgroundColor = .yellow
        field.layer.borderWidth = 2.0
        field.layer.borderColor = UIColor.black.cgColor
        field.layer.cornerRadius = 0.5 * 100
        //field.clipsToBounds = true
        field.layer.masksToBounds = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        
        view.addSubview(testButton)
        view.addSubview(testField)
        testButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        testButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 150).isActive = true
        //testButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -50).isActive = true
        testButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        testField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        testField.heightAnchor.constraint(equalToConstant: 100).isActive = true
        testField.topAnchor.constraint(equalTo: testButton.bottomAnchor, constant: 10).isActive = true
        testField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        
    }


}

