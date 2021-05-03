//
//  ViewController.swift
//  MahjongCalculator
//
//  Created by 谷藤真 on 2021/05/02.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet weak var humansTextField: UITextField!
    @IBOutlet weak var winnerTextField: UITextField!
    @IBOutlet weak var yakuTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// MARK: Action
extension InputViewController {
    @IBAction func calculateButtonTapped(_ sender: Any) {
    }
}
