//
//  GenreViewController.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 12/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class GenreViewController: UIViewController {
    
    var genres: [Genre] = []

    @IBOutlet weak var tv_genreList: UITableView!
    // MARK: - Public properties -

    var presenter: GenrePresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Genre"
        
        tv_genreList.delegate = self
        tv_genreList.dataSource = self
        tv_genreList.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        presenter.fetchListGenre()
    }

}

// MARK: - Extensions -

extension GenreViewController: GenreViewInterface {
    func update(with genres: [Genre]) {
        DispatchQueue.main.async {
            self.genres = genres
            self.tv_genreList.reloadData()
        }
    }
    
    func update(with error: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
            self.present(alert, animated: true,completion: nil)
        }
    }
    
}

// MARK: - TableView

extension GenreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv_genreList.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.genres[indexPath.row].name
        return cell
    }
    
    
}
