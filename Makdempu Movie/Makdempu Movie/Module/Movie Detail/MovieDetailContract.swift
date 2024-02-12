//
//  MovieDetailContract.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewMovieDetailProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMovieDetailProtocol {
    
    var view: PresenterToViewMovieDetailProtocol? { get set }
    var interactor: PresenterToInteractorMovieDetailProtocol? { get set }
    var router: PresenterToRouterMovieDetailProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMovieDetailProtocol {
    
    var presenter: InteractorToPresenterMovieDetailProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMovieDetailProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMovieDetailProtocol {
    
}
