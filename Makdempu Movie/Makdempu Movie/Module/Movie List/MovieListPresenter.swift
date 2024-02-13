//
//  MovieListPresenter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class MovieListPresenter {
    
    // MARK: - Private properties -

    private unowned let view: MovieListViewInterface
    private let interactor: MovieListInteractorInterface
    private let wireframe: MovieListWireframeInterface

    // MARK: - Lifecycle -

    init(view: MovieListViewInterface, interactor: MovieListInteractorInterface, wireframe: MovieListWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension MovieListPresenter: MovieListPresenterInterface {
    func getMovieList(with genreId: Int) {
        interactor.fetchMovieList(with: genreId)
    }
    
    func interactorDidFetchMovies(with result: Result<[Movie], Error>) {
        switch result {
        case .success(let movie):
            view.update(with: movie)
        case .failure:
            view.update(with: "Periksa kembali koneksi internet anda")
        }
    }
    
    func goToDetail(with movieId: Int) {
        wireframe.routeToDetail(with: movieId)
    }
}
