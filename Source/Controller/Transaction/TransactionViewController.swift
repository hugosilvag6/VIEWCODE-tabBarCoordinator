//
//  TransactionViewController.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class TransactionViewController: UIViewController {
   
   var onNextView: (() -> Void)?
   
   lazy var transactionView: TransactionView = {
      let view = TransactionView()
      view.backgroundColor = .gray
      view.onNextViewTap = {
         self.onNextView?()
      }
      return view
   }()
   
   override func loadView() {
      self.view = transactionView
   }
 
   override func viewWillAppear(_ animated: Bool) {
      self.navigationController?.isNavigationBarHidden = true
   }
}

