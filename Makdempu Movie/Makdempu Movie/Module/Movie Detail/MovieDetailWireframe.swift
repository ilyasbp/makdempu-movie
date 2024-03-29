//
//  MovieDetailWireframe.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MovieDetailWireframe: BaseWireframe<MovieDetailViewController> {

    // MARK: - Module setup -

    init(movieId: Int) {
        let moduleViewController = MovieDetailViewController()
        super.init(viewController: moduleViewController)
        moduleViewController.movieId = movieId

        let interactor = MovieDetailInteractor()
        let presenter = MovieDetailPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
        interactor.presenter = presenter
    }

}

// MARK: - Extensions -

extension MovieDetailWireframe: MovieDetailWireframeInterface {
    func navigateBack() {
        navigationController?.popViewController(animated: true)
    }
    
    func routeToReview(with movieId: Int) {
        navigationController?.pushWireframe(ReviewWireframe(movieId: movieId))
    }
    
}
