//
//  PageContentViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 23/07/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
  
  // MARK: Properties
  var pageIndex: Int?
  var titleText: String?
  var instructions: String?
  
  // MARK: IBOutlets
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var instructionsLabel: UILabel!
  
  // MARK: View Lifcycle
  override func viewDidLoad() {
    super.viewDidLoad()
    titleLabel.text = "Star Wars Cards"
    instructionsLabel.text = "This is a tutorial for Star Wars Cards"
  }
  
}
