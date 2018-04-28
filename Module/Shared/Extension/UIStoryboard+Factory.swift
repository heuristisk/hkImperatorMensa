//
//  UIStoryboard+Factory.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 28/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

extension UIStoryboard {

    static var defaultStoryboard: UIStoryboard {
        return  UIStoryboard(name: "Main", bundle: nil)
    }

    func instantiateViewController<T>(ofType type: T.Type) -> T {
        guard let instance = instantiateViewController(withIdentifier: String(describing: type)) as? T else {
            fatalError("Oops!")
        }
        return instance
    }
}
