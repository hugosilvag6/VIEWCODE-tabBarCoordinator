//
//  TransactionView.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class TransactionView: UIView {
   
   // MARK: - Closures
   var onNextViewTap: (() -> Void)?
   
   // MARK: - Visual Elements
   private lazy var buttonNextView: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.layer.cornerRadius = 10
      bt.backgroundColor = .blue
      bt.setTitle("Proxima tela", for: .normal)
      bt.addTarget(self, action: #selector(buttonNextViewTap), for: .touchUpInside)
      return bt
   }()
   
   // MARK: - Inits
   override init(frame: CGRect) {
      super.init(frame: frame)
      setElementsVisual()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   private func setElementsVisual() {
      self.addSubview(buttonNextView)
      NSLayoutConstraint.activate([
         buttonNextView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
         buttonNextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
         buttonNextView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
         buttonNextView.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   @objc private func buttonNextViewTap () {
      self.onNextViewTap?()
   }
}
