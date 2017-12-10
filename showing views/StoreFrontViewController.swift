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
      if let button = sender as? UIButton {
        
        let storeVC = segue.destination as! StoreViewController
                
        switch button.tag {
          case 1:
            storeVC.category = .hero
            storeVC.title = "Heroes"
          case 2:
            storeVC.category = .villain
            storeVC.title = "Villains"
          case 3:
            storeVC.category = .ship
            storeVC.title = "Ships"
          case 4:
            storeVC.category = .soldier
            storeVC.title = "Soldiers & Items"
          default:
            break
        }
      }
    }
   }
  
}
