//
//  GlobalGroupsViewController.swift
//  VkAap
//
//  Created by Devileean on 24.07.2021.
//

import UIKit

final class GlobalGroupsViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet  var tableView: UITableView!
    
    
    var groups = [GroupModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groups = GroupsStorage().globalGroups
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension GlobalGroupsViewController:  UITableViewDataSource {
    
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
}

