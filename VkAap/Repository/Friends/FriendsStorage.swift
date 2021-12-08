//
//  FriedsStorage.swift
//  VkAap
//
//  Created by Devileean on 22.07.2021.
//

import Foundation

class FriendsStorage {
    let friends: [FriendModel]
//    let friendsFoto: [FotoModel]
    init() {
        friends = [
            FriendModel(name: "Баба Яга", avatarName: "babajaga", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "21.11.1337", age: 684, location: "Дремучий лес")], fotos: [FotoModel(likeCount: "47", fotoName: "koshei", likeIcon: "🖤")]
            ),
            FriendModel(name: "Финист", avatarName: "finist", genderAndAstrology: "♂︎ ♐︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "13.07.1793", age: 34, location: "Высокие горы")], fotos: [FotoModel(likeCount: "99", fotoName: "finist2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Илья Муромец", avatarName: "iliamuromec", genderAndAstrology: "♂︎ ♎︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "03.06.1650", age: 39, location: "Северо-Восточная Русь")], fotos: [FotoModel(likeCount: "101", fotoName: "murumec2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Сестрица Алёнушка", avatarName: "sisteralenushka", genderAndAstrology: "♀︎ ♑︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "18.02.1670", age: 23, location: "Деревня")], fotos: [FotoModel(likeCount: "78", fotoName: "sestrica2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Святогор", avatarName: "sviatogor", genderAndAstrology: "♂︎ ♈︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "93", fotoName: "lesovik", likeIcon: "🖤")]
            ),
            FriendModel(name: "Василиса Премудрая", avatarName: "vaselisapremudraia", genderAndAstrology: "♀︎ ♋︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "01.09.1502", age: 31, location: "Русь")], fotos: [FotoModel(likeCount: "48", fotoName: "premudraia", likeIcon: "🖤")]
            ),
            FriendModel(name: "Алёша Попович", avatarName: "aleshapopovich", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "21.11.1337", age: 684, location: "Дремучий лес")], fotos: [FotoModel(likeCount: "7", fotoName: "popovich", likeIcon: "🖤")]
            ),
            
            FriendModel(name: "Елена Кощеевна Премудрая", avatarName: "elenakosheevna", genderAndAstrology: "♀︎ ♌︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "03.06.1650", age: 39, location: "Северо-Восточная Русь")], fotos: [FotoModel(likeCount: "34", fotoName: "kosheevna2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Марья Моревна", avatarName: "mariamorevna", genderAndAstrology: "♀︎ ♋︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "18.02.1670", age: 88, location: "Деревня")], fotos: [FotoModel(likeCount: "48", fotoName: "morevna", likeIcon: "🖤")]
            ),
            FriendModel(name: "Несмияна", avatarName: "nesmeiana", genderAndAstrology: "♀︎ ♊︎",questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "43", fotoName: "nesmiana2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Садко", avatarName: "sadko", genderAndAstrology: "♀︎ ♒︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "01.09.1502", age: 77, location: "Русь")], fotos: [FotoModel(likeCount: "48", fotoName: "sadko2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Васелиса Прекрасная", avatarName: "vaselisaprekrasnaia", genderAndAstrology: "♀︎ ♏︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "54", fotoName: "vaselisaprekrasnaia2", likeIcon: "🖤")]
            ),
            FriendModel(name: "Добрыня", avatarName: "dobrinia", genderAndAstrology: "♂︎ ♌︎", questionnaire: [
                            QuestionnaireModel(dateOfBirth: "07.10.1480", age: 55, location: "Святые горы")], fotos: [FotoModel(likeCount: "21", fotoName: "dobrinia2", likeIcon: "🖤")])
        ]
        
 /*       friendsFoto = [
            FotoModel(likeCount:47, fotoName: "koshei", likeIcon: "🖤"),
            FotoModel(likeCount:99, fotoName: "finist2", likeIcon: "🖤"),
            FotoModel(likeCount:101, fotoName: "murumec2", likeIcon: "🖤"),
            FotoModel(likeCount:78, fotoName: "sestrica2", likeIcon: "🖤"),
            FotoModel(likeCount:93, fotoName: "lesovik", likeIcon: "🖤"),
            FotoModel(likeCount:48, fotoName: "premudraia", likeIcon: "🖤"),
            FotoModel(likeCount:7, fotoName: "popovich", likeIcon: "🖤"),
            FotoModel(likeCount:88, fotoName: "morevna", likeIcon: "🖤"),
            FotoModel(likeCount:43, fotoName: "nesmiana2", likeIcon: "🖤"),
            FotoModel(likeCount:77, fotoName: "sadko2", likeIcon: "🖤"),
            FotoModel(likeCount: 54, fotoName: "vaselisaprekrasnaia2", likeIcon: "🖤"),
            FotoModel(likeCount:21, fotoName: "dobrinia2", likeIcon: "🖤"),
            FotoModel(likeCount: 34, fotoName: "kosheevna2", likeIcon: "🖤")        ]*/
        
    }
}
