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
        collectionView.register(UINib(nibName: "FotoFriendsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FotoFriendsCollectionViewCellXib")
    }
}

extension FotoFriendsViewController: UICollectionViewDelegate{
    
}

extension FotoFriendsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        fotografies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FotoFriendsCollectionViewCellXib", for: indexPath) as! FotoFriendsCollectionViewCell
        let fotografy = fotografies[indexPath.item]
        cell.configure(foto: fotografy)
        
        return cell
    }
}

extension FotoFriendsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       // return CGSize(width: 300, height: 300)
    
        let width = view.bounds.width
                let height = width
                
                return CGSize(width: width, height: height)
    
    }
    

    
}
