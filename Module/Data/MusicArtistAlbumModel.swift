//
//  MusicArtistAlbumModel.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import Foundation

struct MusicArtistAlbumModel: DescriptiveProtocol {
    var name: String
    var year: String
    var image: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: MusicArtistAlbumTableViewCell) in
            cell.config(model: self)
        }
        return cellDescriptor
    }
}
