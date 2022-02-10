//
//  FriendsViewController.swift
//  VkAap
//
//  Created by Devileean on 15.07.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var friends: [FriendModel] = []
    var friendsDictionary = [String: [String]] ()
    var friendSectionTitles = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.rowHeight = 100
        let storage = FriendsStorage()
        friends = storage.friends
        
        //регистрируем ячейку чтобы она отображалась в таблице
        tableView.register(UINib(nibName: "FriendsCell", bundle: nil), forCellReuseIdentifier: "FriendsCellXib")
        
                var firstSymbolArray = friends.map { itemFriend in String(itemFriend.name.prefix(1))
                    }
        
                let setFirstSymbol = Set(firstSymbolArray)
                firstSymbolArray = Array(setFirstSymbol)
                print(firstSymbolArray)
        
        
        
            }
    //делаем сегу для фотографий из таблицы друзей на их фотографию(коллекции)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveFotoCollection",
           let destinationController = segue.destination as? FotoFriendsViewController,
           let indexPath = sender as? IndexPath
        {
            let foto = friends[indexPath.row]
            destinationController.fotografies = foto.fotos
            destinationController.title = foto.name
        }
    }
}


extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //if section ==
        friends.count
        
    }
    
    
    // размещаем наш FriendsCell xib
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCellXib", for: indexPath) as? FriendsCell
        else {
            return UITableViewCell()
        }
        let friends = friends[indexPath.row]
        cell.configure(friends: friends)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveFotoCollection", sender: indexPath)
    }
}




