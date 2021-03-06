//
//  ViewController.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit
import PureLayout


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let profileInfoCellReuseIdentifier = "profileCell"
    
    lazy var profileView: UIView = {
        return ProfileView(tableView: self.tableView)
    }()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ProfileInfoTableViewCell.self, forCellReuseIdentifier: profileInfoCellReuseIdentifier)
        tableView.estimatedRowHeight = 64
        tableView.rowHeight = 70
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
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: profileInfoCellReuseIdentifier, for:indexPath) as! ProfileInfoTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.titleLabel.text = "Phone Number"
            cell.descriptionLabel.text = "+23456789"
        case 1:
            cell.titleLabel.text = "Email"
            cell.descriptionLabel.text = "john@doe.com"
        case 2:
            cell.titleLabel.text = "LinkedIn"
            cell.descriptionLabel.text = "www.linkedin.com/john-doe"
        case 3:
            cell.titleLabel.text = "Address"
            cell.descriptionLabel.text = "45, Walt Disney St.\n37485, Mickey Mouse State"
        default:
            break
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    

}

