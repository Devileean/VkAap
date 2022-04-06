//
//  NewsViewController.swift
//  VkAap
//
//  Created by Алексей Логинов on 15.01.2022.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var newsArray: [NewsModel] = []
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newsStorage = NewsStorage()
        newsArray = newsStorage.newsContent
        

        tableView.delegate = self
        tableView.dataSource = self
 
        //регистрируем ячейку чтобы она отображалась в таблице
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "NewsCellXib")
    }
}


extension NewsViewController: UITableViewDelegate {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        newsArray.count
//        
//    }
    
}

extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        newsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCellXib", for: indexPath) as? NewsCell
        else {
            return UITableViewCell()
        }
        let news = newsArray[indexPath.count]
        cell.configure(news: news)
        return cell
    }
    
    
}
