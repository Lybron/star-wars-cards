//
//  SWCIAPManager.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 26/11/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import Foundation

class SWCIAPManager: IAPManager {
  
  public static let shared = SWCIAPManager()
  
  public func checkiCloudForPreviousPurchase () {
    if NSUbiquitousKeyValueStore.default().bool(forKey: SWCConstants.IAP.CharacterSet.stormTrooperIdentifier) == true {
      unlockCharacter()
    }
  }
  
  public func unlockCharacter() {
    UserDefaults.standard.set(true, forKey: SWCConstants.IAP.CharacterSet.stormTrooperIdentifier)
    
    NSUbiquitousKeyValueStore.default().set(true, forKey: SWCConstants.IAP.CharacterSet.stormTrooperIdentifier)
    NSUbiquitousKeyValueStore.default().synchronize()
    
    NotificationCenter.default.post(name: Notification.Name(rawValue: SWCConstants.IAP.CharacterSet.stormTrooperIdentifier), object: nil)
  }
  
  public func isCharacterUnlocked() -> Bool {
    return UserDefaults.standard.bool(forKey: SWCConstants.IAP.CharacterSet.stormTrooperIdentifier)
  }
  
  // MARK: Overrides
  private override init() {
    super.init()
    self.productIdentifiers = [SWCConstants.IAP.CharacterSet.stormTrooperIdentifier]
  }
  
  internal override func provideContentForProductIdentifier(_ identifier: String) {
    super.provideContentForProductIdentifier(identifier)
    unlockCharacter()
  }
  
}
