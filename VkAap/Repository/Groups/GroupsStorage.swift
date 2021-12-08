//
//  GroupsStorage.swift
//  VkAap
//
//  Created by Devileean on 24.07.2021.
//

import Foundation

class GroupsStorage {
    let groups: [GroupModel]
    let globalGroups: [GroupModel]
    init() {
        groups = []
        globalGroups = [
            
            GroupModel(groupName: "Школа Богатырей", avatarGroup: "shkolabogatirei",
                       sampleGroup: [SampleGroup(direction: "Тёмный лес", subscribers: 376)]
            ),
            GroupModel(groupName: "Киевская Русь", avatarGroup: "kievskaruss",
                       sampleGroup: [SampleGroup(direction: "Царство кощеево", subscribers: 999)]
            ),
            GroupModel(groupName: "Лукоморье", avatarGroup: "lukomorie",
                       sampleGroup: [SampleGroup(direction: "Охотничьи угодья", subscribers: 8976)]
            ),
            GroupModel(groupName: "Иванушка ALERT", avatarGroup: "poisivanushki",
                       sampleGroup: [SampleGroup(direction: "Московская Русь", subscribers: 376)]
            ),
            
            GroupModel(groupName: "Вальпургиева ночь", avatarGroup: "valpurgievanoch",
                       sampleGroup: [SampleGroup(direction: "Тёмный лес", subscribers: 376)]
            ),
            GroupModel(groupName: "Как спрятать яйцо", avatarGroup: "kosheevasmert",
                       sampleGroup: [SampleGroup(direction: "Царство кощеево", subscribers: 999)]
            ),
            GroupModel(groupName: "Охота", avatarGroup: "ohota",
                       sampleGroup: [SampleGroup(direction: "Охотничьи угодья", subscribers: 8976)]
            ),
            GroupModel(groupName: "ГОР Совет", avatarGroup: "gorsovet",
                       sampleGroup: [SampleGroup(direction: "Московская Русь", subscribers: 376)]
            ),
        ]
    }
}
