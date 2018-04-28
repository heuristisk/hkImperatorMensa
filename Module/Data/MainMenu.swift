//
//  MainSelectionModel.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import Foundation

struct MainMenu: DescriptiveProtocol {
    var title: String
    var image: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: MainSelectionTableViewCell) in
            cell.config(model: self)
        }
        return cellDescriptor
    }
}
