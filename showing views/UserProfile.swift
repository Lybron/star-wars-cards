//
//  UserProfile.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 14/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation
import UIKit

struct UserProfile {
  var name: String?
  var rank: Double?
  var credits: Double?
  var currentScore: Double?
  var profileImageName: String?
    
  public init(name: String) {
    self.name = name
  }
  
  private init() {  }
}
