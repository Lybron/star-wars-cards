//
//  GridTile.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 21/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit
import QuartzCore

class GridTile: UIView {
  
  public var spaceShip: Spaceship?
  
  override func draw(_ rect: CGRect) {
    // Drawing code
    layer.borderColor = UIColor.black.cgColor
    layer.borderWidth = 5.0
  }
}
