//
//  FriedsStorage.swift
//  VkAap
//
//  Created by Devileean on 22.07.2021.
//

import Foundation

class FriendsStorage {
    let friends: [FriendModel]

    
    init() {
        friends = [
            FriendModel(name: "Баба Яга", avatarName: "babajaga", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "koshei")]
            ),
            FriendModel(name: "Финист", avatarName: "finist", genderAndAstrology: "♂︎ ♐︎", fotos: [FotoModel(fotoName: "finist2")]
            ),
            FriendModel(name: "Илья Муромец", avatarName: "iliamuromec", genderAndAstrology: "♂︎ ♎︎", fotos: [FotoModel(fotoName: "murumec2")]
            ),
            FriendModel(name: "Сестрица Алёнушка", avatarName: "sisteralenushka", genderAndAstrology: "♀︎ ♑︎", fotos: [FotoModel(fotoName: "sestrica2")]
            ),
            FriendModel(name: "Святогор", avatarName: "sviatogor", genderAndAstrology: "♂︎ ♈︎", fotos: [FotoModel(fotoName: "lesovik")]
            ),
            FriendModel(name: "Василиса Премудрая", avatarName: "vaselisapremudraia", genderAndAstrology: "♀︎ ♋︎", fotos: [FotoModel(fotoName: "premudraia")]
            ),
            FriendModel(name: "Алёша Попович", avatarName: "aleshapopovich", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "popovich")]
            ),
            
            FriendModel(name: "Елена Кощеевна Премудрая", avatarName: "elenakosheevna", genderAndAstrology: "♀︎ ♌︎", fotos: [FotoModel(fotoName: "kosheevna2")]
            ),
            FriendModel(name: "Марья Моревна", avatarName: "mariamorevna", genderAndAstrology: "♀︎ ♋︎", fotos: [FotoModel(fotoName: "morevna")]
            ),
            FriendModel(name: "Несмияна", avatarName: "nesmeiana", genderAndAstrology: "♀︎ ♊︎", fotos: [FotoModel(fotoName: "nesmiana2")]
            ),
            FriendModel(name: "Садко", avatarName: "sadko", genderAndAstrology: "♀︎ ♒︎", fotos: [FotoModel(fotoName: "sadko2")]
            ),
            FriendModel(name: "Васелиса Прекрасная", avatarName: "vaselisaprekrasnaia", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "vaselisaprekrasnaia2")]
            ),
            FriendModel(name: "Добрыня", avatarName: "dobrinia", genderAndAstrology: "♂︎ ♌︎", fotos: [FotoModel(fotoName: "dobrinia2")])
        ]
        
        
    }
}
