//
//  ProfileInfoTableViewCell.swift
//  PureCode
//
//  Created by David Yoon on 2021/08/23.
//

import UIKit

class ProfileInfoTableViewCell: UITableViewCell {
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Title"
        return label
    }()
    
    lazy var descriptionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "profileCell")
        self.addSubview(titleLabel)
        self.addSubview(descriptionLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func updateConstraints() {
        let titleInsets = UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 8)
        titleLabel.autoPinEdgesToSuperviewEdges(with: titleInsets, excludingEdge: .bottom)
        
        let descInsets = UIEdgeInsets(top: 0, left: 16, bottom: 4, right: 8
        )
        descriptionLabel.autoPinEdgesToSuperviewEdges(with: descInsets, excludingEdge: .top)
        
        descriptionLabel.autoPinEdge(.top, to: .bottom, of: titleLabel, withOffset: 16)
        super.updateConstraints()
    }
}
