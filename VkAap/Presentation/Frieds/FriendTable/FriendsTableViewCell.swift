//
//  FriendsTableViewCell.swift
//  VkAap
//
//  Created by Devileean on 22.07.2021.
//


import UIKit

final internal class FriendsTableViewCell : UITableViewCell {
    
    static let reusedIdentifier = "FriendsTableViewCell"
    
    @IBOutlet weak var genderAndAstrologyLabel: UILabel!
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    
    func configure(friends: FriendModel) {
        avatarImageView.image = UIImage(named: friends.avatarName)
        nameLabel.text = friends.name
        genderAndAstrologyLabel.text = friends.genderAndAstrology
    }
    
}
