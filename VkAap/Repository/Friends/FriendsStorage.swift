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
            FriendModel(name: "Baba Jaga", avatarName: "babajaga", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "koshei")]
            ),
            FriendModel(name: "Finist", avatarName: "finist", genderAndAstrology: "♂︎ ♐︎", fotos: [FotoModel(fotoName: "finist2")]
            ),
            FriendModel(name: "Ilia Muromec", avatarName: "iliamuromec", genderAndAstrology: "♂︎ ♎︎", fotos: [FotoModel(fotoName: "murumec2")]
            ),
            FriendModel(name: "Sister Alenushka", avatarName: "sisteralenushka", genderAndAstrology: "♀︎ ♑︎", fotos: [FotoModel(fotoName: "sestrica2")]
            ),
            FriendModel(name: "Sviatogor", avatarName: "sviatogor", genderAndAstrology: "♂︎ ♈︎", fotos: [FotoModel(fotoName: "lesovik")]
            ),
            FriendModel(name: "Vasilisa Premudraia", avatarName: "vaselisapremudraia", genderAndAstrology: "♀︎ ♋︎", fotos: [FotoModel(fotoName: "premudraia")]
            ),
            FriendModel(name: "Alesha Popovich", avatarName: "aleshapopovich", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "popovich")]
            ),
            
            FriendModel(name: "Elena Kosheevna", avatarName: "elenakosheevna", genderAndAstrology: "♀︎ ♌︎", fotos: [FotoModel(fotoName: "kosheevna2")]
            ),
            FriendModel(name: "Maria Morevna", avatarName: "mariamorevna", genderAndAstrology: "♀︎ ♋︎", fotos: [FotoModel(fotoName: "morevna")]
            ),
            FriendModel(name: "Nesmiana", avatarName: "nesmeiana", genderAndAstrology: "♀︎ ♊︎", fotos: [FotoModel(fotoName: "nesmiana2")]
            ),
            FriendModel(name: "Sadko", avatarName: "sadko", genderAndAstrology: "♀︎ ♒︎", fotos: [FotoModel(fotoName: "sadko2")]
            ),
            FriendModel(name: "Vaselisa Prekrasnaia", avatarName: "vaselisaprekrasnaia", genderAndAstrology: "♀︎ ♏︎", fotos: [FotoModel(fotoName: "vaselisaprekrasnaia2")]
            ),
            FriendModel(name: "Dobrinia", avatarName: "dobrinia", genderAndAstrology: "♂︎ ♌︎", fotos: [FotoModel(fotoName: "dobrinia2")])
        ]
        
        
    }
}
