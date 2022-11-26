//
//  CategoryViewController.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class CategoryViewController: UIViewController {
   
   lazy var categoryView: CategoryView = {
      let view = CategoryView()
      view.backgroundColor = .cyan
      return view
   }()
   
   override func loadView() {
      self.view = categoryView
   }
   
   override func viewWillAppear(_ animated: Bool) {
      self.navigationController?.isNavigationBarHidden = true
   }
   
}

