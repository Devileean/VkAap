//
//  GroupsViewController.swift
//  VkAap
//
//  Created by Devileean on 15.07.2021.
//

import UIKit

class GroupsViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!
    
    var groups : [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storage = GroupsStorage()
        groups = storage.groups
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToMyGroups" {
        }
    }
    //делаем добавление групп
    
    @IBAction func addGroup(_ segue: UIStoryboardSegue) {
        guard
            segue.identifier == "addGroups",
            let sourceController = segue.source as? GlobalGroupsViewController,
            let indexPath = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
      let group = sourceController.groups[indexPath.row]
        
        // проверка на повторные города, CONTAINS - метод высшего порядка(ПРО НИХ ВСЕ ПРОЧИТАТЬ!!!!)
        
       if !groups.contains(where: {$0.groupName == group.groupName}) {
            groups.append(group)
            
            //обновляем таблицу
            tableView.reloadData()
       }
    }
}
extension GroupsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: GroupTableViewCell.reusedIdentifier, for: indexPath) as? GroupTableViewCell
        else {
            return UITableViewCell()
        }
        
        let groups = groups[indexPath.row]
        cell.configure(groups: groups)
        return cell
    }

    // удаление групп:
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка УДАЛИТЬ
        if editingStyle == .delete {
            // Удаляем группу
            groups.remove(at: indexPath.row)
            // Удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}


extension GroupsViewController: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "moveToMyGroups", sender: nil)
}

}






