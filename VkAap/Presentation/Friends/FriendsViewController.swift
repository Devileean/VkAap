//
//  FriendsViewController.swift
//  VkAap
//
//  Created by Devileean on 15.07.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var friendsSearchBar: UISearchBar!
    
    var friendsSection = [[FriendModel]]()
    var friendsArray: [FriendModel] = []
    private var firstLetters: [String] = []
    
    var searchActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storage = FriendsStorage()
        friendsArray = storage.friends
        firstLetters = getFirstLetters(storage.friends)
        friendsSection = sortedForSection(storage.friends, firstLetters: firstLetters)

        //убрать клавиатуру из поиска
        tableView.keyboardDismissMode = .onDrag
        
        //регистрируем ячейку чтобы она отображалась в таблице
        tableView.register(UINib(nibName: "FriendsCell", bundle: nil), forCellReuseIdentifier: "FriendsCellXib")
   
        tableView.separatorColor = .clear

    }
    
    //делаем сегу для фотографий из таблицы друзей на их фотографию(коллекции)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveFotoCollection",
           let destinationController = segue.destination as? FotoFriendsViewController,
           let indexPath = sender as? IndexPath{
            
            let foto = friendsArray[indexPath.item]
            destinationController.fotografies = foto.fotos
            destinationController.title = foto.name
        }
    }
}

// достаём первую букву из имён друзей
private func getFirstLetters(_ friends: [FriendModel]) -> [String] {
    let friendsName = friends.map { $0.name }
    let firstLetters = Array(Set(friendsName.map { String($0.prefix(1)) })).sorted()
    return firstLetters
}
// сортируем буквы
private func sortedForSection(_ friends: [FriendModel], firstLetters: [String]) -> [[FriendModel]] {
    var friendsSorted: [[FriendModel]] = []
    firstLetters.forEach { letter in
        let friendsForLetter = friends.filter { String($0.name.prefix(1)) == letter}
        friendsSorted.append(friendsForLetter)
    }
    return friendsSorted
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        friendsSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendsSection[section].count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveFotoCollection", sender: indexPath)
    }
    
    // размещаем наш FriendsCell xib
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCellXib", for: indexPath) as? FriendsCell
        else {
            return UITableViewCell()
        }
        let friends = friendsSection[indexPath.section][indexPath.row]
        cell.configure(friends: friends)
        return cell
    }
    
    //Чтобы отобразить заголовок заголовка в каждом разделе, реализуйте метод tableview(_:titleForHeaderInSection:).
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return firstLetters[section]
        
    }

    //Чтобы добавить индексированное табличное представление, реализуйте метод sectionIndexTitles(for:).
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        return firstLetters
    }
    
    // Вызовите метод willDisplayHeaderView в TableViewController классе
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {

    // Создаём константу, именна через неё мы будем обращаться к свойствам и изменять их
    let header = view as! UITableViewHeaderFooterView

    // Установить цвет текста в label
    header.textLabel?.textColor = .white

    // Установить цвет фона для секции
    header.tintColor = UIColor.lightGray

    // Установить шрифт и размер шрифта для label
    header.textLabel?.font = UIFont(name: "Helvetica-Regular", size: 25)
    }
    
    

}

extension FriendsViewController: UISearchBarDelegate {
    //MARK: Setup searchBar
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
        searchActive = true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
       
        hideKeyboard()
    }
    
    @objc func hideKeyboard() {
        
        searchActive = false
        friendsSearchBar.endEditing(true)
    }
    
}


