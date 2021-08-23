//
//  ViewController.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit
import PureLayout


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var profileView: UIView = {
        return ProfileView(tableView: self.tableView)
    }()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    
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
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    

}

