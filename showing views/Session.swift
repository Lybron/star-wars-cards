//
//  Session.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 14/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation

class Session: NSObject {
  
  public static let shared = Session()

  var currentUser: UserProfile?
  
  private override init (){}
}
