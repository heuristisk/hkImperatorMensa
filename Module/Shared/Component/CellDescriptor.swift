//
//  CellDescriptor.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

struct CellDescriptor {
    let cellClass: UITableViewCell.Type
    let reuseIdentifier: String
    let configure: (UITableViewCell) -> ()

    init<T: UITableViewCell>(configure: @escaping (T) -> ()) {
        self.cellClass = T.self
        self.reuseIdentifier = String(describing: T.self)
        self.configure = { cell in
            configure(cell as! T)
        }
    }
}
