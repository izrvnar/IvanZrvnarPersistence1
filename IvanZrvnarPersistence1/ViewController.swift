//
//  ViewController.swift
//  IvanZrvnarPersistence1
//
//  Created by Ivan Zrvnar on 2022-02-23.
//

import UIKit

// changing the
class ViewController: UICollectionViewController {
    
    
//MARK: -View did Load
    override func viewDidLoad() {
        super.viewDidLoad()

    }//: View did load

    //MARK: -METHODS
    
    // how many items to populate the grid
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    // recycling collection view cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else{
            fatalError("Unable to deque person cell")
        }
        return cell
    }
    
    
    

}//: View Controller

