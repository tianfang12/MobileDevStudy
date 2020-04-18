//
//  DiningHallTableViewCell.swift
//  SwiftStudy
//
//  Created by 杨祖亮 on 2020/4/17.
//  Copyright © 2020 杨祖亮. All rights reserved.
//

import UIKit

class DiningHallTableViewCell: UITableViewCell {
    
    var nameLabel: UILabel!
    
    var ratingLabel: UILabel!
    
    var heartImageView: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        nameLabel = UILabel()
        nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        
        ratingLabel = UILabel()
        ratingLabel.font = UIFont.systemFont(ofSize: 12)
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(ratingLabel)
        
        heartImageView = UIImageView()
        heartImageView.image = UIImage(named: "heart")
        heartImageView.contentMode = .scaleAspectFit
        heartImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(heartImageView)
        
        setupConstraints()
    }
    
    func setupConstraints() {
       
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            nameLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
        
        NSLayoutConstraint.activate([
            ratingLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            ratingLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            ratingLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
        
        NSLayoutConstraint.activate([
            heartImageView.heightAnchor.constraint(equalToConstant: 25),
            heartImageView.widthAnchor.constraint(equalToConstant: 25),
            heartImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            heartImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
    }
    
    func configure(for diningHall: DiningHall) {
        
        nameLabel.text = diningHall.name
        ratingLabel.text = "Rating: \(diningHall.getRatingString())"
        heartImageView.isHidden = !diningHall.isFavorite
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
