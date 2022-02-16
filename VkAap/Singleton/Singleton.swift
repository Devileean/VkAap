//
//  Singleton.swift
//  VkAap
//
//  Created by Алексей Логинов on 15.02.2022.
//

import UIKit

class Session {
    
    static let instance = Session()
    
    private init () {}
    
    var id:    Int?
    var token: String?
}
