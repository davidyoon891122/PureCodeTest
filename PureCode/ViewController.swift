//
//  ViewController.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit
import PureLayout


class ViewController: UIViewController {
    
    lazy var avatar: UIImageView = {
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
    
    lazy var segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Personal", "Social", "Resume"])
        control.autoSetDimension(.height, toSize: 32.0)
        control.selectedSegmentIndex = 0
        control.layer.borderColor = UIColor.gray.cgColor
        control.tintColor = .gray
        return control
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        self.view.addSubview(avatar)
        self.view.addSubview(upperView)
        self.view.addSubview(segmentedControl)
        self.view.bringSubviewToFront(avatar)
        setupConstrains()
        
        
    }
    
    
    func setupConstrains() {
        avatar.autoAlignAxis(toSuperviewAxis: .vertical)
        avatar.autoPinEdge(toSuperviewEdge: .top, withInset: 64.0)
        
        upperView.autoPinEdge(toSuperviewEdge: .left)
        upperView.autoPinEdge(toSuperviewEdge: .right)
        upperView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
        
        segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: 8.0)
        segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: 8.0)
        segmentedControl.autoPinEdge(.top, to: .bottom, of: avatar, withOffset: 16.0)
        
    }


}

