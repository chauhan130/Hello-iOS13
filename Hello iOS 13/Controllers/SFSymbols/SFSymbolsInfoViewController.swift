//
//  SFSymbolsInfoViewController.swift
//  Hello iOS 13
//
//  Created by Sunil Chauhan on 16/09/19.
//  Copyright © 2019 chauhan130. All rights reserved.
//

import UIKit

class SFSymbolsInfoViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!

    let staticSymbols = ["airplayaudio", "airplayvideo", "arkit", "arrow.clockwise.icloud", "arrow.clockwise.icloud.fill", "arrow.counterclockwise.icloud",
                   "arrow.counterclockwise.icloud.fill", "arrow.down.left.video", "arrow.down.left.video.fill", "arrow.up.right.video",
                   "arrow.up.right.video.fill", "bolt.horizontal.icloud", "bolt.horizontal.icloud.fill", "exclamationmark.icloud",
                   "exclamationmark.icloud.fill", "faceid", "icloud", "icloud.and.arrow.down", "icloud.and.arrow.down.fill", "icloud.and.arrow.up",
                   "icloud.and.arrow.up.fill", "icloud.circle", "icloud.circle.fill", "icloud.fill", "icloud.slash", "icloud.slash.fill", "link.icloud",
                   "link.icloud.fill", "livephoto", "livephoto.play", "livephoto.slash", "lock.icloud", "lock.icloud.fill", "message", "message.circle",
                   "message.circle.fill", "message.fill", "pencil.tip", "pencil.tip.crop.circle", "pencil.tip.crop.circle.badge.minus",
                   "pencil.tip.crop.circle.badge.plus", "person.icloud", "person.icloud.fill", "questionmark.video", "questionmark.video.fill",
                   "questionmark.video.fill.rtl", "questionmark.video.rtl", "realtimetext", "safari", "safari.fill", "teletype", "video", "video.badge.plus",
                   "video.badge.plus.fill", "video.circle", "video.circle.fill", "video.fill", "video.slash", "video.slash.fill", "xmark.icloud", "xmark.icloud.fill"]

    let dynamicSymbols = ["square.and.arrow.up", "square.and.arrow.up.fill", "square.and.arrow.down", "square.and.arrow.up.on.square",
                          "square.and.arrow.up.on.square.fill", "square.and.arrow.down.on.square", "square.and.arrow.down.on.square.fill", "pencil",
                          "pencil.circle", "pencil.circle.fill", "pencil.slash", "square.and.pencil", "pencil.and.ellipsis.rectangle", "pencil.and.outline",
                          "trash", "trash.fill", "trash.circle", "trash.circle.fill", "trash.slash", "trash.slash.fill", "folder", "folder.fill",
                          "folder.circle", "folder.circle.fill", "folder.badge.plus", "folder.fill.badge.plus", "folder.badge.minus", "folder.fill.badge.minus",
                          "folder.badge.person.crop", "folder.fill.badge.person.crop", "paperplane", "paperplane.fill", "tray", "tray.fill", "tray.and.arrow.up",
                          "tray.and.arrow.up.fill", "tray.and.arrow.down", "tray.and.arrow.down.fill", "tray.2", "tray.2.fill", "tray.full", "tray.full.fill",
                          "archivebox", "archivebox.fill", "bin.xmark", "bin.xmark.fill", "arrow.up.bin", "arrow.up.bin.fill", "doc", "doc.fill", "doc.circle",
                          "doc.circle.fill", "arrow.up.doc", "arrow.up.doc.fill", "arrow.down.doc", "arrow.down.doc.fill", "doc.text", "doc.text.fill",
                          "doc.on.doc", "doc.on.doc.fill", "doc.on.clipboard", "doc.on.clipboard.fill", "doc.richtext", "doc.plaintext", "doc.append"]

}

extension SFSymbolsInfoViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dynamicSymbols.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SFSymbolCell", for: indexPath) as! SFSymbolCell
        cell.imageView.image = UIImage(systemName: dynamicSymbols[indexPath.item])
        cell.imageView.tintColor = UIColor.random
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let symbolDetailController = storyboard.instantiateViewController(identifier: "EditSymbolViewController") as! EditSymbolViewController
        symbolDetailController.symbolName = dynamicSymbols[indexPath.item]
        if let cell = collectionView.cellForItem(at: indexPath) as? SFSymbolCell {
            symbolDetailController.color = cell.imageView.tintColor
        }
        navigationController?.pushViewController(symbolDetailController, animated: true)
    }
}
