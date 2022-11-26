//
//  LoginView.swift
//  Tabbar-Coordinator
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

class LoginView: UIView {
   // MARK: - Closure
   var onLogin: (() -> Void)?
   
   // MARK: - Properties
   lazy var loginButton: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Logar", for: .normal)
      bt.backgroundColor = .blue
      bt.layer.cornerRadius = 10
      bt.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
      return bt
   }()
   // MARK: - Inits
   override init(frame: CGRect) {
      super.init(frame: frame)
      setButton()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   private func setButton() {
      self.addSubview(loginButton)
      NSLayoutConstraint.activate([
         self.loginButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
         self.loginButton.heightAnchor.constraint(equalToConstant: 40),
         self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
         self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24)
      ])
   }
   @objc private func loginTap () {
      self.onLogin?()
   }
}
