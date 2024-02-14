//
//  GenreInterfaces.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol GenreWireframeInterface: WireframeInterface {
    func routeToMovieList(with genre: Genre)
    
    func navigateBack()
}

protocol GenreViewInterface: ViewInterface {
    func update(with genres: [Genre])
    func update(with error: String)
}

protocol GenrePresenterInterface: PresenterInterface {
    func fetchListGenre()
    
    func interactorDidFetchGenre(with result: Result<[Genre], Error>)
    
    func goToMovieList(with genre: Genre)
    
    func navigateBack()
}

protocol GenreInteractorInterface: InteractorInterface {
    func fetchListGenre()
}
