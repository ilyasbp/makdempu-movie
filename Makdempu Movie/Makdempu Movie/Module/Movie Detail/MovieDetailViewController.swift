//
//  MovieDetailViewController.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//  
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterMovieDetailProtocol?
    
}

extension MovieDetailViewController: PresenterToViewMovieDetailProtocol{
    // TODO: Implement View Output Methods
}
