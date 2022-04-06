//
//  NewsStorage.swift
//  VkAap
//
//  Created by Алексей Логинов on 03.04.2022.
//

import UIKit

class NewsStorage {
    let newsContent : [NewsModel]

    init() {
        newsContent = [

            NewsModel(authorAvatarImageNews: "chernomor", authorNameNews: "Мифодий", publicationDateNews: "12.07.1202", headerNews: "Новые подвиги", newsImage: "33bogatira"),
            NewsModel(authorAvatarImageNews: "kingshut", authorNameNews: "Королевский Шут", publicationDateNews: "03.05.1956", headerNews: "В болоте пропал молодой князь", newsImage: "kikimora"),
            NewsModel(authorAvatarImageNews: "vanhelsing", authorNameNews: "доктор Ван Хельсинг", publicationDateNews: "09.11.404", headerNews: "Суточный рацион вурдалака", newsImage: "drakula"),
            NewsModel(authorAvatarImageNews: "masterkey", authorNameNews: "Мастер ключей", publicationDateNews: "22.05.3045", headerNews: "Тайны древних порталов", newsImage: "magicmirror"),
            NewsModel(authorAvatarImageNews: "iskatel", authorNameNews: "Чёрный капатель", publicationDateNews: "04.06.199", headerNews: "Найдена последняя бутылка живой воды", newsImage: "zelie")
    ]
    }
}
