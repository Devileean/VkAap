//
//  StorageEmulator.swift
//  VkAap
//
//  Created by Алексей Логинов on 20.02.2022.
//

import Foundation

import Foundation

class StorageEmulator {
  
  static let userIdKey = "userIdKey"
  static let friendsArrayKey = "friendsArrayKey"
  
  static func setUserId(userId: String) {
    if (userId != getUserId()) {
    UserDefaults.standard.set(userId, forKey: userIdKey)
    }
  }
  
  static func getUserId() -> String? {
    return UserDefaults.standard.string(forKey: userIdKey)
  }
  //TODO: fix storing [Friends] in UserdeFaults, deal with exception handling
  
//  static func setFriendsArray(friendsArray: [Friends]) {
//    UserDefaults.standard.set(NSKeyedArchiver.archivedData(withRootObject: friendsArray, requiringSecureCoding: true), forKey: friendsArrayKey)
//  }
  
  static func getFriendsArray() -> [FriendModel]? {
    return UserDefaults.standard.object(forKey: friendsArrayKey) as? [FriendModel]
  }
}
