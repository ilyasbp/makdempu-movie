//
//  MovieListContract.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewMovieListProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMovieListProtocol {
    
    var view: PresenterToViewMovieListProtocol? { get set }
    var interactor: PresenterToInteractorMovieListProtocol? { get set }
    var router: PresenterToRouterMovieListProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMovieListProtocol {
    
    var presenter: InteractorToPresenterMovieListProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMovieListProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMovieListProtocol {
    
}
