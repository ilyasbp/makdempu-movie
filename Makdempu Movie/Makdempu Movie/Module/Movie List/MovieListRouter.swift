//
//  MovieListRouter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation
import UIKit

class MovieListRouter: PresenterToRouterMovieListProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = MovieListViewController()
        
        let presenter: ViewToPresenterMovieListProtocol & InteractorToPresenterMovieListProtocol = MovieListPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MovieListRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MovieListInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
