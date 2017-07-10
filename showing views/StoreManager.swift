//
//  StoreManager.swift
//  STAR WARS CARDS
//
//  Created by Lybron Sobers on 6/18/17.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation
import UIKit


public enum SWCType {
  case ship
  case hero
  case villain
  case soldier
}

struct StoreManager {
  
  public static let shared = StoreManager()
  
  // MARK: Store Data Source
  public func getItems(_ catergory: SWCType) -> [SWCObject] {
    switch catergory {
    case .ship:
      return shipsData()
    case .hero:
      return heroesData()
    case .villain:
      return villainsData()
    case .soldier:
      return soldierData()
    }
  }
  
  private func shipsData() -> [Spaceship] {
    var ships: [Spaceship] = []
    
    let names = ["Blockade Runner", "Medical Fragment", "Destroyer", "Executor", "Eclipse"]
    
    let prices: [NSNumber] = [1000, 10000, 20000, 30000, 50000]
    
    for (i, name) in names.enumerated() {
      let ship = Spaceship(name: name, image: UIImage(named: name)!, price: prices[i])
      ships.append(ship)
    }
    
    return ships
  }
  
  private func soldierData() -> [Soldier] {
    var soldiers: [Soldier] = []
    
    // TODO: Get list of names and prices
    let names = ["Fathead"]
    let prices: [NSNumber] = [10000]
    
    for (i, name) in names.enumerated() {
      let soldier = Soldier(name: name, image: UIImage(named: name)!, price: prices[i])
      soldiers.append(soldier)
    }
    
    return soldiers
  }
  
  private func villainsData() -> [Villain] {
    var villains: [Villain] = []
    
    let names = ["Boba Fett", "Jango Fett", "Dengar", "Darth Vader"]
    let prices :  [NSNumber] = [ 90000, 30000, 50000, 1000000]
    
    for (i, name) in names.enumerated() {
      let villain = Villain(name: name, image: UIImage(named: name)!, price: prices[i])
      villains.append(villain)
    }
    
    return villains
  }
  
  private func heroesData() -> [Hero] {
    var heroes: [Hero] = []
    
    let names = ["Luke Skywalker"]
    let prices: [NSNumber] = [1000000]
    
    for (i, name) in names.enumerated() {
      let hero = Hero(name: name, image: UIImage(named: name)!, price: prices[i])
      heroes.append(hero)
    }
    
    return heroes
  }
}
