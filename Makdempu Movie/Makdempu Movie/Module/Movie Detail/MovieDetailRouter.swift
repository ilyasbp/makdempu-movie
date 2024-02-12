//
//  MovieDetailRouter.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation
import UIKit

class MovieDetailRouter: PresenterToRouterMovieDetailProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = MovieDetailViewController()
        
        let presenter: ViewToPresenterMovieDetailProtocol & InteractorToPresenterMovieDetailProtocol = MovieDetailPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MovieDetailRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MovieDetailInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
