//
//  Int+Random.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 02/07/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation

extension Int {
  public func random(_ limit: Int) -> Int {
    return Int(arc4random_uniform(UInt32(limit)))
  }
}
