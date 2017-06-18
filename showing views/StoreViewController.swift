//
//  StoreViewController.swift
//  showing views
//
//  Created by Nicholas Ramcharitar on 10/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  // MARK: Properties
  let cellIdentifier = "Cell"
  
  // MARK: Datasource
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
    
    return UICollectionViewCell()
  }
  
  // MARK: Delegate
  
}
