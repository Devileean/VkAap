//
//  FriendsViewController.swift
//  VkAap
//
//  Created by Devileean on 15.07.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    var friends: [FriendModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storage = FriendsStorage()
        friends = storage.friends
        
        
    }
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
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reusedIdentifier, for: indexPath) as? FriendsTableViewCell
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

