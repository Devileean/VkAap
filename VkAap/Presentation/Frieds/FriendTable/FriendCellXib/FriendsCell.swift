//
//  FriendsCell.swift
//  VkAap
//
//  Created by Алексей Логинов on 25.12.2021.
//

import UIKit

class FriendsCell: UITableViewCell {
        @IBOutlet weak var backRoundView: UIView!
        @IBOutlet weak var avatarView: CirclePhotoView!
        @IBOutlet weak var avatarImageView: UIImageView!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var genderAndAstrologyLabel: UILabel!
    
    
    
    func configure(friends: FriendModel) {

        avatarImageView.image = UIImage(named: friends.avatarName)
        nameLabel.text = friends.name
        genderAndAstrologyLabel.text = friends.genderAndAstrology

        backRoundView.backgroundColor = .lightGray
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let cornerRadius = avatarView.frame.width / 2
        
        avatarImageView.layer.cornerRadius = cornerRadius
        avatarImageView.clipsToBounds = true
    }
}
