//
//  FotoFriendsViewController.swift
//  VkAap
//
//  Created by Devileean on 26.07.2021.
//

import UIKit

class FotoFriendsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
  
    
    var  fotografies: [FotoModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}

extension FotoFriendsViewController: UICollectionViewDelegate{
    
}

extension FotoFriendsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        fotografies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FotoFriendsCollectionCell.identifier, for: indexPath) as! FotoFriendsCollectionCell
        let fotografy = fotografies[indexPath.item]
        cell.configure(foto: fotografy)
        
        return cell
    }
}
