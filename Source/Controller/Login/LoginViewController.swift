//
//  LoginViewController.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class LoginViewController: UIViewController {
   
   // MARK: - Closure
   var onLogin: (() -> Void)?
   
   lazy var loginView: LoginView = {
      let view = LoginView()
      view.backgroundColor = .white
      view.onLogin = {
         self.onLogin?()
      }
      return view
   }()

   override func loadView() {
      self.view = loginView
   }
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
}
