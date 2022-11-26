//
//  NextViewCoordinator.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class NextViewCoordinator: Coordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let viewController = NextViewController()
      self.navigationController.pushViewController(viewController, animated: true)
   }
   
}
