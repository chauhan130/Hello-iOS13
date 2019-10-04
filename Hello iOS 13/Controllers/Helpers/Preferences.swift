//
//  Preferences.swift
//  Hello iOS 13
//
//  Created by Sunil Chauhan on 17/09/19.
//  Copyright © 2019 chauhan130. All rights reserved.
//

import UIKit

class Preferences {
    static let shared = Preferences()

    private let symbolInfoPointSizeKey = "symbolInfoPointSizeKey"
    private let symbolInfoWeightKey = "symbolInfoWeightKey"

    var symbolInfoPointSize: CGFloat {
        get {
            return UserDefaults.standard.value(forKey: symbolInfoPointSizeKey) as? CGFloat ?? 50
        }
        set {
            UserDefaults.standard.set(newValue, forKey: symbolInfoPointSizeKey)
        }
    }

    var symbolInfoWeight: UIImage.SymbolWeight {
        get {
            guard let raw = UserDefaults.standard.value(forKey: symbolInfoWeightKey) as? Int else {
                return .unspecified
            }
            return UIImage.SymbolWeight(rawValue: raw) ?? .unspecified
        }
        set {
            UserDefaults.standard.set(newValue.rawValue, forKey: symbolInfoWeightKey)
        }
    }
    
}
