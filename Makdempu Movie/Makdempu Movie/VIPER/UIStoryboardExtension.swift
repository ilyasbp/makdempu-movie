//
//  UIStoryboardExtension.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//

import UIKit

extension UIStoryboard {

    func instantiateViewController<T: UIViewController>(ofType _: T.Type, withIdentifier identifier: String? = nil) -> T {
        let identifier = identifier ?? String(describing: T.self)
        return instantiateViewController(withIdentifier: identifier) as! T
    }

}
