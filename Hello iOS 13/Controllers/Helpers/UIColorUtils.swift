//
//  UIColorUtils.swift
//  Hello iOS 13
//
//  Created by Sunil Chauhan on 17/09/19.
//  Copyright © 2019 chauhan130. All rights reserved.
//

import UIKit

extension UIColor {
    class var random: UIColor {
        get {
            switch Int.random(in: 0...15) {
            case 0:
                return .systemRed
            case 1:
                return .systemBlue
            case 2:
                return .systemFill
            case 3:
                return .systemGray
            case 4:
                return .systemPink
            case 5:
                return .systemTeal
            case 6:
                return .systemGray2
            case 7:
                return .systemGray3
            case 8:
                return .systemGray4
            case 9:
                return .systemGray5
            case 10:
                return .systemGray6
            case 11:
                return .systemGreen
            case 12:
                return .systemIndigo
            case 13:
                return .systemOrange
            case 14:
                return .systemYellow
            case 15:
                return .systemPurple
            default:
                return .secondarySystemFill
            }
        }
    }
}
