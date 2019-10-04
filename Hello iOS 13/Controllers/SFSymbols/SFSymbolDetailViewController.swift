//
//  SFSymbolDetailViewController.swift
//  Hello iOS 13
//
//  Created by Sunil Chauhan on 17/09/19.
//  Copyright © 2019 chauhan130. All rights reserved.
//

import UIKit

class SFSymbolDetailViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!

    var symbolName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = symbolName ?? "Symbol"

        if let imageName = symbolName {
            imageView.image = UIImage(systemName: imageName)
        }
    }
}
