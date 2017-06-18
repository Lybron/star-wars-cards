//
//  StoreFrontViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 18/06/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class StoreFrontViewController: UIViewController {
  
  // MARK: Propertities
  private let StoreFrontSegueID = "storeCollectionSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func selectHeroes(_ sender: Any) {
    performSegue(withIdentifier:StoreFrontSegueID , sender: sender)
  }
  
  
  @IBAction func selectVillains(_ sender: Any) {
    performSegue(withIdentifier:StoreFrontSegueID , sender: sender)
  }
  
  @IBAction func selectShips(_ sender: Any) {
    performSegue(withIdentifier:StoreFrontSegueID , sender: sender)
  }
  
  
  @IBAction func selectItems(_ sender: Any) {
    performSegue(withIdentifier:StoreFrontSegueID , sender: sender)
  }
  
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "storeCollectionSegue" {
      
    }
   }
  
}
