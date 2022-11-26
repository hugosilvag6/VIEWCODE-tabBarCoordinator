//
//  TabbarCoordinator.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class TabBarCoordinator: Coordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let tabBarController = TabBarController()
      let transactionCoordinator = TransactionsCoordinator(navigationController: self.navigationController)
      let categoryCoordinator = CategoryCoordinator(navigationController: self.navigationController)
      tabBarController.setViewControllers([transactionCoordinator.transactionViewController, categoryCoordinator.categoryViewController], animated: true)
      self.navigationController.pushViewController(tabBarController, animated: true)
   }
   
   
}
