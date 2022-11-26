//
//  CategoryCoordinator.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class CategoryCoordinator: Coordinator {
   let navigationController: UINavigationController
   var categoryViewController: CategoryViewController = {
      let viewController = CategoryViewController()
      viewController.tabBarItem.image = UIImage(systemName: "location.circle")
      viewController.title = "Categorias"
      return viewController
   }()
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
   }
   
}
