//
//  MovieDetailPresenter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation

class MovieDetailPresenter: ViewToPresenterMovieDetailProtocol {

    // MARK: Properties
    var view: PresenterToViewMovieDetailProtocol?
    var interactor: PresenterToInteractorMovieDetailProtocol?
    var router: PresenterToRouterMovieDetailProtocol?
}

extension MovieDetailPresenter: InteractorToPresenterMovieDetailProtocol {
    
}
