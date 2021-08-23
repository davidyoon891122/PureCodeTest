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
    
    lazy var upperView: UIView = {
        let view = UIView()
        view.autoSetDimension(.height, toSize: 128)
        view.backgroundColor = .gray
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        self.view.addSubview(avater)
        self.view.addSubview(upperView)
        
        
        
    }


}

