//
//  FotoFriendsCollectionViewCell.swift
//  VkAap
//
//  Created by Алексей Логинов on 30.12.2021.
//

import UIKit

class FotoFriendsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backroundViewForImage: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likeControll: UIView!
    
    func configure(foto: FotoModel) {
        imageView.image = UIImage(named: foto.fotoName)
        backroundViewForImage.backgroundColor = .darkGray
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    }

    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
      let recognizer = UITapGestureRecognizer(target: self,
                                              action: #selector(onTap(_:)))
      recognizer.numberOfTapsRequired = 1
      recognizer.numberOfTouchesRequired = 1
      return recognizer
    }()
    
    @objc func onTap(_ sender: UIImageView) {
        ImageTapAnimations.animateImageTap(imageView: imageView)
      
      
      
    }
}
