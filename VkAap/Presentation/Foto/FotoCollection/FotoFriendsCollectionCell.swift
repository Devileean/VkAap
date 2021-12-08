//
//  FotoFriendsCollectionCell.swift
//  VkAap
//
//  Created by Devileean on 26.07.2021.
//

import UIKit

final class FotoFriendsCollectionCell: UICollectionViewCell {

    static let identifier = "FotoFriendsCollectionCell"
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var likesCountLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    
    func configure(foto: FotoModel) {
        fotoImageView.image = UIImage(named: foto.fotoName)
        likeLabel.text = foto.likeIcon
        likesCountLabel.text = foto.likeCount
    }
}
