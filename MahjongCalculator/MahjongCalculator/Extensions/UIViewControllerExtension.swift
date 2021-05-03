//
//  UIViewControllerExtension.swift
//  MahjongCalculator
//
//  Created by 谷藤真 on 2021/05/03.
//

import UIKit

extension UIViewController {
    func setDismissKeyboard() {
        let tapGestureRecognizer: UITapGestureRecognizer = .init(target: self, action: #selector(dismissKeyboard))
        tapGestureRecognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
}
