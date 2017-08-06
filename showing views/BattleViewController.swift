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
  var gameView: UIView?
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let sideLength: CGFloat = min(self.view.frame.size.width - 46, self.view.frame.size.height - 46)
    
    let gameLayer = UIView(frame: CGRect(x: 0, y: 0, width: sideLength, height: sideLength))
      
    view.addSubview(gameLayer)
    
      gameView = gameLayer
  }
  
  
  
  
  
  // MARK: Set Tiles
  private func placeTiles() {
    
  }
  
}
