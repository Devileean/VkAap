//
//  FriendModel.swift
//  VkAap
//
//  Created by Devileean on 22.07.2021.
//

import Foundation

struct FriendModel {
    let name:               String
    let avatarName:         String
    let genderAndAstrology: String
    let fotos:              [FotoModel]
    
    init (name:               String,
          avatarName:         String,
          genderAndAstrology: String,
          fotos:              [FotoModel])
    {
        self.name               = name
        self.avatarName         = avatarName
        self.genderAndAstrology = genderAndAstrology
        self.fotos              = fotos

    }
}
