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
    
    
    let startingViewController: PageContentViewController = PageContentViewController()
    let viewControllers = [startingViewController]
    pageViewController?.setViewControllers(viewControllers, direction: .forward, animated: false, completion: nil)
    
    let pvcFrame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - 30)
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
    return PageContentViewController()
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
    
    return PageContentViewController()
  }
  
  
  
//  - (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index
//  {
//  if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
//  return nil;
//  }
//  
//  // Create a new view controller and pass suitable data
//  PageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
//  pageContentViewController.imageFile = self.pageImages[index];
//  pageContentViewController.titleText = self.pageTitles[index];
//  pageContentViewController.pageIndex = index;
//  
//  return pageContentViewController;
//  }
//  
//  // Following two methods for page indication
//  - (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
//  {
//  return [self.pageTitles count];
//  }
//  
//  - (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
//  {
//  return 0;
//  }
//  
//  #pragma mark - Start Again
//  - (IBAction)startWalkthrough:(id)sender
//  {
//  PageContentViewController *startingViewController = [self viewControllerAtIndex:0];
//  NSArray *viewControllers = @[startingViewController];
//  
//  [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
//  }
  
}
