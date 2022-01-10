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
            FriendModel(name: "Баба Яга", avatarName: "babajaga", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "21.11.1337", age: 684, location: "Дремучий лес")], fotos: [FotoModel(likeCount: "47", fotoName: "koshei")]
            ),
            FriendModel(name: "Финист", avatarName: "finist", genderAndAstrology: "♂︎ ♐︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "13.07.1793", age: 34, location: "Высокие горы")], fotos: [FotoModel(likeCount: "99", fotoName: "finist2")]
            ),
            FriendModel(name: "Илья Муромец", avatarName: "iliamuromec", genderAndAstrology: "♂︎ ♎︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "03.06.1650", age: 39, location: "Северо-Восточная Русь")], fotos: [FotoModel(likeCount: "101", fotoName: "murumec2")]
            ),
            FriendModel(name: "Сестрица Алёнушка", avatarName: "sisteralenushka", genderAndAstrology: "♀︎ ♑︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "18.02.1670", age: 23, location: "Деревня")], fotos: [FotoModel(likeCount: "78", fotoName: "sestrica2")]
            ),
            FriendModel(name: "Святогор", avatarName: "sviatogor", genderAndAstrology: "♂︎ ♈︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "93", fotoName: "lesovik")]
            ),
            FriendModel(name: "Василиса Премудрая", avatarName: "vaselisapremudraia", genderAndAstrology: "♀︎ ♋︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "01.09.1502", age: 31, location: "Русь")], fotos: [FotoModel(likeCount: "48", fotoName: "premudraia")]
            ),
            FriendModel(name: "Алёша Попович", avatarName: "aleshapopovich", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "21.11.1337", age: 684, location: "Дремучий лес")], fotos: [FotoModel(likeCount: "7", fotoName: "popovich")]
            ),
            
            FriendModel(name: "Елена Кощеевна Премудрая", avatarName: "elenakosheevna", genderAndAstrology: "♀︎ ♌︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "03.06.1650", age: 39, location: "Северо-Восточная Русь")], fotos: [FotoModel(likeCount: "34", fotoName: "kosheevna2")]
            ),
            FriendModel(name: "Марья Моревна", avatarName: "mariamorevna", genderAndAstrology: "♀︎ ♋︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "18.02.1670", age: 88, location: "Деревня")], fotos: [FotoModel(likeCount: "48", fotoName: "morevna")]
            ),
            FriendModel(name: "Несмияна", avatarName: "nesmeiana", genderAndAstrology: "♀︎ ♊︎",questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "43", fotoName: "nesmiana2")]
            ),
            FriendModel(name: "Садко", avatarName: "sadko", genderAndAstrology: "♀︎ ♒︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "01.09.1502", age: 77, location: "Русь")], fotos: [FotoModel(likeCount: "48", fotoName: "sadko2")]
            ),
            FriendModel(name: "Васелиса Прекрасная", avatarName: "vaselisaprekrasnaia", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "54", fotoName: "vaselisaprekrasnaia2")]
            ),
            FriendModel(name: "Добрыня", avatarName: "dobrinia", genderAndAstrology: "♂︎ ♌︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "21", fotoName: "dobrinia2")])
        ]
        
        
    }
}
