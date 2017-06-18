//
//  StoreViewController.swift
//  showing views
//
//  Created by Nicholas Ramcharitar on 10/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class StoreViewController: UICollectionViewController {
  
  // MARK: Properties
  internal let cellIdentifier = "Cell"
//  internal var flowLayout: UICollectionViewFlowLayout?
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureCollectionView()
  }
  
  internal func configureCollectionView() {
    let space: CGFloat = 3.0
    let dimension = (view.frame.size.width - (2 * space)) / 3.0
    
//    collectionView!.collectionViewLayout.minimumInteritemSpacing = space
//    collectionView!.collectionViewLayout.minimumLineSpacing = space
//    collectionView!.collectionViewLayout.itemSize = CGSize(width: dimension, height: dimension)
    
//    collectionView!.collectionViewLayout = flowLayout
  }
  
  // MARK: Datasource
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! StoreCollectionViewCell
    
    return cell
  }
  
  // MARK: Delegate
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    collectionView.deselectItem(at: indexPath, animated: true)
  }
}
