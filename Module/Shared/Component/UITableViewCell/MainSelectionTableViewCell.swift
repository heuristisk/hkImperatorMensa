//
//  MainSelectionTableViewCell.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

final class MainSelectionTableViewCell: UITableViewCell {

    @IBOutlet private weak var imageViewer: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!

    func config(model: MainMenu) {
        titleLabel.text = model.title
        imageViewer.image = UIImage(named: model.image)
    }
}
