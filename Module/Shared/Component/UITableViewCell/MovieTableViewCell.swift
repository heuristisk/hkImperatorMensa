//
//  MovieTableViewCell.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet private weak var imageViewer: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    @IBOutlet private weak var releaseDateLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var runtimeLabel: UILabel!

    func config(model: MovieModel) {
        nameLabel.text = model.name
        genreLabel.text = model.genre
        releaseDateLabel.text = model.releaseDate
        descriptionLabel.text = model.description
        runtimeLabel.text = model.runtime
        imageViewer.image = UIImage(named: model.image)
    }
}
