//
//  MovieListInterfaces.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol MovieListWireframeInterface: WireframeInterface {
    func routeToDetail(with movieId: Int)
}

protocol MovieListViewInterface: ViewInterface {
    func update(with movies: [Movie])
    
    func update(with error: String)
}

protocol MovieListPresenterInterface: PresenterInterface {
    func getMovieList(with genreId: Int)
    
    func interactorDidFetchMovies(with result: Result<[Movie], Error>)
    
    func goToDetail(with movieId: Int)
}

protocol MovieListInteractorInterface: InteractorInterface {
    func fetchMovieList(with genreId: Int)
}
