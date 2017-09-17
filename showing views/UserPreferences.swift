//
//  UserPreferences.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 27/08/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation

struct UserPreferencesManager {
  
  private let defaults = UserDefaults.standard
  
  // MARK: Singleton
  public static let shared = UserPreferencesManager()
  
  // MARK: Username
  public func stroreUsername(_ username: String) {
    defaults.set(username, forKey: Constants.UserKeys.usernameKey)
  }
  
  public func loadUsername() -> String? {
    return defaults.value(forKey: Constants.UserKeys.usernameKey) as? String
  }
  
  public func saveUsername(_ username: String) {
    defaults.set(username, forKey: Constants.UserKeys.usernameKey)
  }
}
