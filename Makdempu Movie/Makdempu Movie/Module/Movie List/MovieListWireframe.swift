//
//  MovieListWireframe.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MovieListWireframe: BaseWireframe<MovieListViewController> {

    // MARK: - Module setup -

    init(genre: Genre) {
        let moduleViewController = MovieListViewController()
        super.init(viewController: moduleViewController)
        moduleViewController.genre = genre

        let interactor = MovieListInteractor()
        let presenter = MovieListPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
        interactor.presenter = presenter
    }

}

// MARK: - Extensions -

extension MovieListWireframe: MovieListWireframeInterface {
    func navigateBack() {
        navigationController?.popViewController(animated: true)
    }
    
    func routeToDetail(with movieId: Int) {
        navigationController?.pushWireframe(MovieDetailWireframe(movieId: movieId))
    }
    
}
