//
//  SettingsTableViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 26/11/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, UITextFieldDelegate {
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    textField.resignFirstResponder()
  }
}
