//
//  PickerViewTitles.swift
//  MahjongCalculator
//
//  Created by 谷藤真 on 2021/05/03.
//

import Foundation

struct PickerViewTitles {
    static let humans: [String] = Humans.allCases.map({$0.rawValue})
    static let winner: [String] = Winner.allCases.map({$0.rawValue})
    static let yaku: [String] = Yaku.allCases.map({$0.rawValue})
}

struct PickerViewTagNumbers {
    static let humans: Int = 1
    static let winner: Int = 2
    static let yaku: Int = 3
}

enum Humans: String, CaseIterable {
    case four = "四人打ち（四麻）"
    case three = "三人打ち（三麻）"
}

enum Winner: String, CaseIterable {
    case parent = "親"
    case child = "子"
}

enum Yaku: String, CaseIterable {
    case fourOrLess = "4翻以下"
    case mangan = "満貫"
    case haneman = "跳満"
    case baiman = "倍満"
    case sanbaiman = "三倍満"
    case yakuman = "役満"
}
