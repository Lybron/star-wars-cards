//
//  BattleViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 14/05/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit
import QuartzCore

class BattleViewController: UIViewController, UIGestureRecognizerDelegate {
  
  // MARK: Properties
  
  @IBOutlet weak var gameView: TileView!
  
  private var tiles = [GridTile]()
  private let TileMargin: CGFloat = 20.0
  private var tileWidth: CGFloat = 0
  private var tileHeight: CGFloat = 0
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    placeTiles()
  }
  
  @objc private func tapDetected(point: CGPoint) {
    print("Tile Tapped")
  }
  
  // MARK: Set Tiles
  private func placeTiles() {
    tileHeight = gameView.frame.size.height/8.0
    tileWidth = gameView.frame.size.width/8.0
        
    for yIndex in 0...7 {
      for xIndex in 0...7 {
        let tileYOrigin = (CGFloat(yIndex) * tileHeight)
        let tileXOrigin = (CGFloat(xIndex) * tileWidth)
        
        let tileView = UIView(frame: CGRect(x: tileXOrigin, y: tileYOrigin, width: tileWidth, height: tileHeight))
        print(tileView.frame)
        tileView.layer.borderColor = UIColor.black.cgColor
        tileView.layer.borderWidth = 1.0
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(BattleViewController.tapDetected))
        tapRecognizer.delegate = self
        tapRecognizer.numberOfTapsRequired = 1
        tileView.addGestureRecognizer(tapRecognizer)
        
//        let bgColor = (yIndex % 2 == 0) && (xIndex % 2 != 0) ? UIColor.red : UIColor.green
//        tileView.backgroundColor = bgColor
        gameView.addSubview(tileView)
      }
    }
    
//    let gameBoard = UIView(frame: CGRect(x: 0.0 , y: 0.0 , width: gameView.frame.size.height, height: gameView.frame.size.height))
//    gameBoard.backgroundColor = .green
//    gameView.addSubview(gameBoard)
  }
  
}
