//
//  TutorialViewController.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 23/07/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
  
  // MARK: Properties
  let pageTitles = [""]
  let instructions = [""]
  
  var pageViewController: UIPageViewController?
  
  // MARK: View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? UIPageViewController
    pageViewController?.dataSource = self
    
    
    let startingViewController: PageContentViewController = viewControllerAtIndex(0)!
    let viewControllers = [startingViewController]
    pageViewController?.setViewControllers(viewControllers, direction: .forward, animated: false, completion: nil)
    
    let pvcFrame = CGRect(x: 0, y: 30, width: view.frame.size.width, height: view.frame.size.height - 120)
    pageViewController?.view.frame = pvcFrame
    addChildViewController(pageViewController!)
    view.addSubview(pageViewController!.view)
    pageViewController?.didMove(toParentViewController: self)
    
  }
  
  // MARK: Page View Data Source
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    
    let controller = (viewController as! PageContentViewController)
    
    var index = controller.pageIndex!
    
    if index == 0 || index == NSNotFound {
      return nil
    }
    
    index -= 1
    return viewControllerAtIndex(index)
  }
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    
    let controller = viewController as! PageContentViewController
    var index = controller.pageIndex!
    
    if index == NSNotFound {
      return nil
    }
    
    index += 1
    
    if (index == pageTitles.count) {
      return nil
    }
    
    return viewControllerAtIndex(index)
  }
  
  func viewControllerAtIndex(_ index: Int) -> PageContentViewController? {
    if pageTitles.count == 0 || index >= pageTitles.count {
      return nil
    }
    
    // Create view controller and pass suitable data
    let pageVC = storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentViewController
    pageVC.instructions = instructions[index]
    pageVC.pageIndex = index
    
    return pageVC
  }
  
  func presentationCount(for pageViewController: UIPageViewController) -> Int {
    return pageTitles.count
  }
  
  func presentationIndex(for pageViewController: UIPageViewController) -> Int {
    return 0
  }
  
  func startWalkThrough() {
    let startController = viewControllerAtIndex(0)
    let viewControllers = [startController]
    
    pageViewController?.setViewControllers(viewControllers as? [UIViewController], direction: .forward, animated: false, completion: nil)
  }
  
  @IBAction func exitButtonPressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
}
