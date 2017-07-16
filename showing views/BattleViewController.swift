//
//  BattleViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 14/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {
  
  // MARK: Properties
  
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    placeTiles()
  }
  
  // MARK: Set Tiles
  private func placeTiles() {
    print("place tiles")
    for stack in view.subviews {
      print("found view")
      
      for view in stack.subviews {
        print("stack sub: \(String(describing: view))")
        
        for sub in view.subviews {
          print("sub sub: \(String(describing: sub))")
          
          guard let tile = sub as? UIView else {
            print("is not grid tile")
            continue
          }
          
          let ships = StoreManager.shared.getItems(.ship)
          
          let shipView = UIImageView(frame: tile.frame)
          shipView.image = ships[0].image
          shipView.contentMode = .scaleAspectFit
          
          tile.addSubview(shipView)
          print("added tile")
        }
      }
      
      
      
    }
  }
  
}
