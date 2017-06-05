//
//  SecondViewController.swift
//  showing views
//
//  Created by Nicholas Ramcharitar on 23/04/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var myNameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myNameLabel.text = Session.shared.currentUser?.name
  }
  
  
  
  @IBAction func nextButtonPressed(_ sender: Any) {
    
  }
  
}
