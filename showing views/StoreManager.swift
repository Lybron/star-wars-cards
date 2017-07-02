//
//  StoreManager.swift
//  STAR WARS CARDS
//
//  Created by Lybron Sobers on 6/18/17.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation
import UIKit

struct StoreManager {
  
  public static let shared = StoreManager()
  
  // MARK: Store Data Source
  public func shipsData() -> [Spaceship] {
    var ships: [Spaceship] = []
    
    let names = ["Blockade Runner", "Medical Fragment", "Destroyer", "Executor", "Eclipse"]
    
    let prices: [NSNumber] = [1000, 10000, 20000, 30000, 50000]
    
//    for idx, name in names.count {
//      let ship = Spaceship(name: names[i], image: UIImage(named: names[i])!, price: prices[i])
//      ships.append(ship)
//    }
    
    return ships
  }
  
  public func itemsData() {
    
  }
  
  public func villainsData() {
    
  }
  
  public func heroesData() {
    
  }
}
