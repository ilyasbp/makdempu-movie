//
//  DashboardInteractor.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class DashboardInteractor {
    var presenter: DashboardPresenter?
    var page = 1
}

// MARK: - Extensions -

extension DashboardInteractor: DashboardInteractorInterface {
    func fetchMovieList() {
        guard let url = URL(string: "\(APIConstants.baseURL)/movie/popular\(APIConstants.key)&page=\(page)") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchMovies(with: .failure(error!))
                return
            }
            do {
                let entities = try JSONDecoder().decode(MovieResponse.self, from: data)
                self?.presenter?.interactorDidFetchMovies(with: .success(entities.results))
                self?.page += 1
            }
            catch {
                self?.presenter?.interactorDidFetchMovies(with: .failure(error))
            }
        }
        task.resume()
    }
    
    func fetchAdditionalMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(APIConstants.baseURL)/movie/popular\(APIConstants.key)&page=\(page)") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchMovies(with: .failure(error!))
                return
            }
            do {
                let entities = try JSONDecoder().decode(MovieResponse.self, from: data)
                completion(.success(entities.results))
                self?.page += 1
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
}
