//
//  DashboardPresenter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class DashboardPresenter {
    
    // MARK: - Private properties -

    private unowned let view: DashboardViewInterface
    private let interactor: DashboardInteractorInterface
    private let wireframe: DashboardWireframeInterface

    // MARK: - Lifecycle -

    init(view: DashboardViewInterface, interactor: DashboardInteractorInterface, wireframe: DashboardWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension DashboardPresenter: DashboardPresenterInterface {
    func navigateBack() {
        wireframe.exitApp()
    }
    
    func getMovieList() {
        interactor.fetchMovieList()
    }
    
    func interactorDidFetchMovies(with result: Result<[Movie], Error>) {
        switch result {
        case .success(let movies):
            view.update(with: movies)
        case .failure:
            view.update(with: "Periksa kembali koneksi internet anda")
        }
    }
    
    func getAdditionalMovies(completion: @escaping ([Movie]) -> Void) {
        interactor.fetchAdditionalMovies() { result in
            switch result {
            case .success(let movies):
                completion(movies)
            case .failure:
                completion([])
            }
        }
    }
    
    func goToGenre() {
        wireframe.routeToGenre()
    }
    
    func goToMovieList(with genre: Genre) {
        wireframe.routeToMovieList(with: genre)
    }
    
    func goToMovieDetail(with movieId: Int) {
        wireframe.routeToMovieDetail(with: movieId)
    }
}
