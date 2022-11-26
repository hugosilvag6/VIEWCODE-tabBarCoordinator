//
//  NextViewController.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class NextViewController: UIViewController {
   
   lazy var screen: NextView = {
      let view = NextView()
      view.backgroundColor = .yellow
      return view
   }()
   
   override func loadView() {
      self.view = screen
   }
   
   override func viewWillAppear(_ animated: Bool) {
      self.navigationController?.isNavigationBarHidden = false
   }
   
}
