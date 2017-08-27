//
//  ViewController.swift
//  showing views
//
//  Created by Nicholas Ramcharitar on 23/04/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: IBOutlets
  @IBOutlet weak var nameTextfield: UITextField!

  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  // MARK: IBActions
  @IBAction func doneButtonPressed(_ sender: Any) {
    print("Nicholas is king")
  }
  
  // MARK: Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toSecondView" {
      _ = segue.destination as! SecondViewController
      
      if let text = nameTextfield.text {
        guard text.characters.count > 0 else {
          return
        }
        
        Session.shared.currentUser = UserProfile(name: text)
      }
    }
  }
}

