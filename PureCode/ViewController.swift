//
//  ViewController.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit
import PureLayout


class ViewController: UIViewController {
    
    let profileView = ProfileView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isTranslucent = false
        self.title = "DavidYoon"
        
        self.view.addSubview(profileView)
        self.profileView.autoPinEdgesToSuperviewEdges()
        self.view.layoutIfNeeded()
        
        
    }
    

}

