//
//  MovieListPresenter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation

class MovieListPresenter: ViewToPresenterMovieListProtocol {

    // MARK: Properties
    var view: PresenterToViewMovieListProtocol?
    var interactor: PresenterToInteractorMovieListProtocol?
    var router: PresenterToRouterMovieListProtocol?
}

extension MovieListPresenter: InteractorToPresenterMovieListProtocol {
    
}
