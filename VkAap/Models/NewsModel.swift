//
//  NewsModel.swift
//  VkAap
//
//  Created by Алексей Логинов on 01.04.2022.
//

import Foundation

struct NewsModel {
    
    var authorAvatarImageNews: String
    var authorNameNews:        String
    var publicationDateNews:   String
    var headerNews:            String
    var newsImage:             String
    
    init(authorAvatarImageNews: String,
         authorNameNews:        String,
         publicationDateNews:   String,
         headerNews:            String,
         newsImage:             String){
        
        self.authorAvatarImageNews = authorAvatarImageNews
        self.authorNameNews        = authorNameNews
        self.publicationDateNews   = publicationDateNews
        self.headerNews            = headerNews
        self.newsImage             = newsImage
    }
}
