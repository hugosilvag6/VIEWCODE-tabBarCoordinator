//
//  TransactionsCoordinator.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class TransactionsCoordinator: Coordinator {
   let navigationController: UINavigationController
   lazy var transactionViewController: TransactionViewController = {
      let viewController = TransactionViewController()
      viewController.tabBarItem.image = UIImage(systemName: "dollarsign.circle")
      viewController.title = "Lançamento"
      viewController.onNextView = {
         self.startNextView()
      }
      return viewController
   }()
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
   }
   
   func startNextView() {
      let coordinator = NextViewCoordinator(navigationController: self.navigationController)
      coordinator.start()
   }
   
   
}
