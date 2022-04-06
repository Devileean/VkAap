//
//  GroupsStorage.swift
//  VkAap
//
//  Created by Devileean on 24.07.2021.
//

import UIKit

class GroupsStorage {
    let groups: [GroupModel]
    let globalGroups: [GroupModel]
    init() {
        groups = []
        globalGroups = [

            GroupModel(groupName: "Школа Богатырей", avatarGroup: "shkolabogatirei"),
            GroupModel(groupName: "Киевская Русь", avatarGroup: "kievskaruss"),
            GroupModel(groupName: "Лукоморье", avatarGroup: "lukomorie"),
            GroupModel(groupName: "Иванушка ALERT", avatarGroup: "poisivanushki"),
            GroupModel(groupName: "Вальпургиева ночь", avatarGroup: "valpurgievanoch"),
            GroupModel(groupName: "Как спрятать яйцо", avatarGroup: "kosheevasmert"),
            GroupModel(groupName: "Охота", avatarGroup: "ohota"),
            GroupModel(groupName: "ГОР Совет", avatarGroup: "gorsovet")
        ]
    }
}
