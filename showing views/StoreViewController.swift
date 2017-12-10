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
  
  private var items: [SWCObject] = []
  
  public var category: SWCType?

  // MARK: IBOutlets
  @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureCollectionView()
    
    items = StoreManager.shared.getItems(category!)
  }
  
  internal func configureCollectionView() {
    let space: CGFloat = 3.0
    let dimension = (view.frame.size.width - (2 * space)) / 3.0
    
    flowLayout.minimumInteritemSpacing = space
    flowLayout.minimumLineSpacing = space
    flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    
    collectionView?.collectionViewLayout = flowLayout
  }
  
  // MARK: Datasource
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! StoreCollectionViewCell
    
    let item = items[indexPath.row]
        
    cell.titleLabel.text = item.name
    cell.imageView.image = item.image
    cell.imageView.contentMode = .scaleAspectFit
    cell.priceLabel.text = "\(item.price) XP"
    
    return cell
  }
  
  // MARK: Delegate
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    collectionView.deselectItem(at: indexPath, animated: true)
  }
  
  func buyItem() {
    print("Buy Item")
  }
  
}
