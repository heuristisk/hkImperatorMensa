//
//  MusicArtistAlbumTableViewCell.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class MusicArtistAlbumTableViewCell: UITableViewCell {

    @IBOutlet private weak var imageViewer: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var yearLabel: UILabel!

    func config(model: MusicArtistAlbumModel) {
        nameLabel.text = model.name
        yearLabel.text = model.year
        imageViewer.image = UIImage(named: model.image)
    }
}
