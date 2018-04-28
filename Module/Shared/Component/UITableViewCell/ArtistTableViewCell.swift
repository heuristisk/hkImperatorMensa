//
//  ArtistTableViewCell.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {

    @IBOutlet private weak var imageViewer: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!


    func config(model: MusicArtistModel) {
        nameLabel.text = model.name
        genreLabel.text = model.genre
        imageViewer.image = UIImage(named: model.image)
    }
}
