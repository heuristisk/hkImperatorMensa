//
//  ArtistModel.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import Foundation

struct MusicArtistModel: DescriptiveProtocol {
    var name: String
    var genre: String
    var albuns = [MusicArtistAlbumModel]()
    var image: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: ArtistTableViewCell) in
            cell.config(model: self)
        }
        return cellDescriptor
    }
}
