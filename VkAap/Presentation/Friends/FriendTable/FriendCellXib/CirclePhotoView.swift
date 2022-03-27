//
//  CirclePhotoView.swift
//  VkAap
//
//  Created by Алексей Логинов on 26.12.2021.
//

import UIKit

class CirclePhotoView: UIView {

    let avatarDisegn = FriendsCell()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    private func setUI() {
        let cornerRadius = self.frame.width / 2
        
        
        layer.cornerRadius = cornerRadius
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 25.0
        layer.shadowOpacity = 1.0
    }
    
}
