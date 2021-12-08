//
//  GroupTableViewCell.swift
//  VkAap
//
//  Created by Devileean on 24.07.2021.
//

import UIKit

final internal class GroupTableViewCell : UITableViewCell {
    
    static let reusedIdentifier = "GroupTableViewCell"
    
    @IBOutlet weak var groupAvatarImage: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
    
    func configure(groups: GroupModel) {
        groupAvatarImage.image = UIImage(named: groups.avatarGroup)
        groupNameLabel.text = groups.groupName
    }

}
