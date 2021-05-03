//
//  ViewController.swift
//  MahjongCalculator
//
//  Created by 谷藤真 on 2021/05/02.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet private weak var humansTextField: UITextField!
    @IBOutlet private weak var winnerTextField: UITextField!
    @IBOutlet private weak var yakuTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        humansTextField.text = PickerViewTitles.humans.first
        winnerTextField.text = PickerViewTitles.winner.first
        yakuTextField.text = PickerViewTitles.yaku.first

        initializePickerView()
    }

}

// MARK: PickerView
extension InputViewController {
    private func initializePickerView() {
        let humansPickerView = UIPickerView.init()
        let winnerPickerView = UIPickerView.init()
        let yakuPickerView = UIPickerView.init()

        humansPickerView.dataSource = self
        humansPickerView.delegate = self
        winnerPickerView.dataSource = self
        winnerPickerView.delegate = self
        yakuPickerView.dataSource = self
        yakuPickerView.delegate = self

        // 各pickerViewを識別するためのtagを設定
        humansPickerView.tag = PickerViewTagNumbers.humans
        winnerPickerView.tag = PickerViewTagNumbers.winner
        yakuPickerView.tag = PickerViewTagNumbers.yaku

        // textViewのinputViewを選択
        humansTextField.inputView = humansPickerView
        winnerTextField.inputView = winnerPickerView
        yakuTextField.inputView = yakuPickerView
    }

    // pickerViewのtagから、該当するtitleListを返す
    private func selectPickerViewTitle(_ tag: Int) -> [String] {
        switch tag {
        case PickerViewTagNumbers.humans:
            return PickerViewTitles.humans
        case PickerViewTagNumbers.winner:
            return PickerViewTitles.winner
        case PickerViewTagNumbers.yaku:
            return PickerViewTitles.yaku
        default:
            preconditionFailure("PickerViewのtagの設定がおかしい")
        }
    }
}

// MARK: UIPickerViewDataSource
extension InputViewController: UIPickerViewDataSource {
    // pickerViewの列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    // pickerViewの行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let titleList = selectPickerViewTitle(pickerView.tag)
        return titleList.count
    }
}

// MARK: UIPickerViewDelegate
extension InputViewController: UIPickerViewDelegate {
    // pickerViewの各タイトル
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let titleList = selectPickerViewTitle(pickerView.tag)
        return titleList[row]
    }

    // pickerViewの入力内容をtextFieldに反映する
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let titleList = selectPickerViewTitle(pickerView.tag)
        switch pickerView.tag {
        case PickerViewTagNumbers.humans:
            self.humansTextField.text = titleList[row]
        case PickerViewTagNumbers.winner:
            self.winnerTextField.text = titleList[row]
        case PickerViewTagNumbers.yaku:
            self.yakuTextField.text = titleList[row]
        default:
            preconditionFailure("PickerViewのtagの設定がおかしい")
        }
    }
}

// MARK: Action
extension InputViewController {
    @IBAction private func calculateButtonTapped(_ sender: Any) {
    }
}
