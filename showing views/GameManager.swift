//
//  GameManager.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 27/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation
import UIKit

struct GameManager {
  public static let shared = GameManager()
  
  public var ships = shared.getShips()
  
  private func getShips() -> [Spaceship] {
    if ships.isEmpty {
      var newShips = [Spaceship]()
      
      for _ in 0...9 {
        let ship = Spaceship(name: "Destoyer", image: #imageLiteral(resourceName: "Destroyer"), position: CGPoint(x: 0.0, y: 0.0))
        newShips.append(ship)
      }
      
      return newShips
    } else {
      return ships
    }
  }
  
  public func randomShipImage() -> UIImage {
    
    let images = ["Blockade Runner","Destroyer","Eclipse","Executor", "Intridector", "Medical Fragment"]
    
    let randomNumber = arc4random_uniform(UInt32(images.count))
    
    let integer = Int(randomNumber)
    
    let imageName = images[integer]
    
    let image = UIImage(named: imageName)
    
    return image! // UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])!
  }
  
  private init() {}
  
}
