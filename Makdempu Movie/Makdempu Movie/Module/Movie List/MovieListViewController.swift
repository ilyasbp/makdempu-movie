//
//  MovieListViewController.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import UIKit

class MovieListViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterMovieListProtocol?
    
}

extension MovieListViewController: PresenterToViewMovieListProtocol{
    // TODO: Implement View Output Methods
}
