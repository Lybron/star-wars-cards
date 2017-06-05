//
//  Spaceship.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 27/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation
import UIKit

struct Spaceship {
  public var name: String
  public var image: UIImage
  public var position: CGPoint
  
  public init(name: String, image: UIImage, position: CGPoint) {
    self.name = name
    self.image = image
    self.position = position
  }
  
  private init(){
    self.name = ""
    self.image = UIImage()
    self.position = CGPoint()
  }
}
