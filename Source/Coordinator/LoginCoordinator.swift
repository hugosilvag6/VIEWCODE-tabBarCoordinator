//
//  LoginCoordinator.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class LoginCoordinator: Coordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let viewController = LoginViewController()
      viewController.onLogin = {
         self.startTabBar()
      }
      self.navigationController.pushViewController(viewController, animated: true)
   }
   private func startTabBar (){
      let coordinator = TabBarCoordinator(navigationController: self.navigationController)
      coordinator.start()
   }
}
