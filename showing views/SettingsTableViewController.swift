//
//  SettingsTableViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 26/11/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, UITextFieldDelegate {
  
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    
  }
}
