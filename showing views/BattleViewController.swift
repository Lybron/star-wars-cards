//
//  BattleViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 14/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {
  
  // MARK: Properties
  
  @IBOutlet weak var gameView: UIView!
  
  private var tiles = [GridTile]()
  private let TileMargin: CGFloat = 20.0
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    placeTiles()
  }
  
  // MARK: Set Tiles
  private func placeTiles() {
    let gameBoard = UIView(frame: CGRect(x: 0.0 , y: 0.0 , width: gameView.frame.size.height, height: gameView.frame.size.height))
    gameBoard.backgroundColor = .green
    gameView.addSubview(gameBoard)
  }
  
}
