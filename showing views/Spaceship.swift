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
  public var position: CGPoint = CGPoint()
  public var price: NSNumber
  
  public init(name: String, image: UIImage, price: NSNumber) {
    self.name = name
    self.image = image
    self.price = price
  }
  
  private init(){
    self.name = ""
    self.image = UIImage()
    self.position = CGPoint()
    self.price = 0.00
  }
}
