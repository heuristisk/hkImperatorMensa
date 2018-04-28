//
//  MovieModel.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import Foundation

struct MovieModel: DescriptiveProtocol {
    var name: String
    var image: String
    var releaseDate: String
    var genre: String
    var description: String
    var runtime: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: MovieTableViewCell) in
            cell.config(model: self)
        }
        return cellDescriptor
    }
}
