//
//  NewsCell.swift
//  VkAap
//
//  Created by Алексей Логинов on 15.05.2022.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var avatarAuthorPostImage:  UIImageView!
    @IBOutlet weak var nameAuthorPostLabel:    UILabel!
    @IBOutlet weak var postDateLabel:          UILabel!
    @IBOutlet weak var newsTextView:           UITextView!
    @IBOutlet weak var newsImageView:          UIImageView!
    @IBOutlet weak var backgroundNewsPostView: UIView!
    
    
    func configure(newsContent: NewsModel) {
        
        avatarAuthorPostImage.image            = UIImage(named: newsContent.authorAvatarImageNews)
        nameAuthorPostLabel.text               = newsContent.authorNameNews
        postDateLabel.text                     = newsContent.publicationDateNews
        newsImageView.image                    = UIImage(named: newsContent.newsImage)
        
        backgroundNewsPostView.backgroundColor = .lightGray
        newsTextView.backgroundColor           = .clear
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let cornerRadius = avatarAuthorPostImage.frame.width / 2
        
        avatarAuthorPostImage.layer.cornerRadius = cornerRadius
        avatarAuthorPostImage.clipsToBounds      = true
    }
    
}
