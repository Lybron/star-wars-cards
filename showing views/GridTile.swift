//
//  GridTile.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 21/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit
import QuartzCore

import UIKit

//1
class GridTile: UIImageView {
  //2
  var letter: Character
  
  //3
  var isMatched: Bool = false
  
  //4 this should never be called
  required init(coder aDecoder:NSCoder) {
    fatalError("use init(letter:, sideLength:")
  }
  
  //5 create a new tile for a given letter
  init(letter:Character, sideLength:CGFloat) {
    self.letter = letter
    
    //the tile background
    let image = UIImage(named: "Destroyer")!
    
    //superclass initializer
    //references to superview's "self" must take place after super.init
    super.init(image:image)
    
    //6 resize the tile
    let scale = sideLength / image.size.width
    self.frame = CGRect(x: 0, y: 0, width: image.size.width * scale, height: image.size.height * scale)
    
    //more initialization here
  }
}

//class GridTile: UIView {
//  
//  public var spaceShip: Spaceship?
//  
//  override func draw(_ rect: CGRect) {
//    // Drawing code
//    layer.borderColor = UIColor.black.cgColor
//    layer.borderWidth = 5.0
//  }
//}
