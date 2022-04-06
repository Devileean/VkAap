//
//  NewsCell.swift
//  VkAap
//
//  Created by Алексей Логинов on 29.03.2022.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var avataImageNewsCell: UIImageView!
    @IBOutlet weak var authorLabelNewsCell: UILabel!
    @IBOutlet weak var dateLabelNewsCell: UILabel!
    @IBOutlet weak var headerLabelNewsCell: UILabel!
    @IBOutlet weak var backroundView: UIView!
    @IBOutlet weak var likeControl: UIView!
    @IBOutlet weak var imageNewsCell: UIImageView!
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var shareView: UIView!
    @IBOutlet weak var viewsNewsCell: UIView!
    
    
    func configure(news: NewsModel) {
        
        avataImageNewsCell.image = UIImage(named: news.authorAvatarImageNews)
        authorLabelNewsCell.text = news.authorNameNews
        dateLabelNewsCell.text = news.publicationDateNews
        headerLabelNewsCell.text = news.headerNews
        imageNewsCell.image = UIImage(named: news.newsImage)
        
    }
}
