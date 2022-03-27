////
////  SectionIndexManager.swift
////  VkAap
////
////  Created by Алексей Логинов on 20.02.2022.
////
//
//import Foundation
//
//
//class SectionIndexManager {
//
//  static func getOrderedIndexArray(array: [FriendModel]) -> [Character] {
//    var indexArray: [Character] = []
//    var indexSet = Set<Character>()
//    for item in array {
//        let firstLetter = item.name[0]
//        indexSet.insert(firstLetter)
//    }
//    for char in indexSet{
//      indexArray.append(char)
//    }
//    indexArray.sort()
//    return indexArray
//  }
//
//  static func getFriendIndexDictionary(array: [FriendModel]) -> [Character: [FriendModel]] {
//    var friendIndexDictionary: [Character: [FriendModel]] = [:]
//
//    for item in array {
//        let firstLetter = item.name[0]
//     if (friendIndexDictionary.keys.contains(firstLetter)) {
//         friendIndexDictionary[firstLetter]?.append(item)
//     } else {
//      friendIndexDictionary[firstLetter] = [item]
//      }
//    }
//    return friendIndexDictionary
//  }
//}
