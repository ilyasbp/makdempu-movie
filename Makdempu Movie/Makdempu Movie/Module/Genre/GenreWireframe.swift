//
//  GenreWireframe.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class GenreWireframe: BaseWireframe<GenreViewController> {

    // MARK: - Module setup -

    init() {
        let moduleViewController = GenreViewController()
        super.init(viewController: moduleViewController)

        let interactor = GenreInteractor()
        let presenter = GenrePresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension GenreWireframe: GenreWireframeInterface {
}