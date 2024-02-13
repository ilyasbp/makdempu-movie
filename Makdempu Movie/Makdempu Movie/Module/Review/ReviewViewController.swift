//
//  ReviewViewController.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ReviewViewController: UIViewController {
    
    var movieId = 0
    var reviews: [Review] = []

    @IBOutlet weak var tv_review: UITableView!
    
    // MARK: - Public properties -

    var presenter: ReviewPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Reviews"
        
        tv_review.delegate = self
        tv_review.dataSource = self
        tv_review.register(UINib(nibName: String(describing: ReviewCell.self), bundle: nil), forCellReuseIdentifier: ReviewCell.identifier)
        
        presenter.getReviewList(with: movieId)
    }

}

// MARK: - Extensions -

extension ReviewViewController: ReviewViewInterface {
    func update(with reviews: [Review]) {
        DispatchQueue.main.async {
            self.reviews = reviews
            self.tv_review.reloadData()
            self.tv_review.addInfiniteScroll { (tableView) -> Void in
                self.presenter.getAdditionalReviews(with: self.movieId) { [weak self] reviews in
                    DispatchQueue.main.async {
                        if !reviews.isEmpty {
                            self?.reviews.append(contentsOf: reviews)
                            self?.tv_review.reloadData()
                        } else {
                            let alert = UIAlertController(title: "Oops!", message: "This is the end of the page", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .default))
                            self?.present(alert, animated: true, completion: nil)
                        }
                        tableView.finishInfiniteScroll()
                    }
                }
            }
        }
    }
    
    func update(with error: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true,completion: nil)
        }
    }
    
}

// MARK: - TableView

extension ReviewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let review = reviews[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: ReviewCell.identifier, for: indexPath) as! ReviewCell
        cell.iv_portrait.setImage(from: review.authorDetails?.avatarPath ?? "")
        cell.lb_name.text = review.author
        cell.lb_date.text = String(review.updatedAt?.prefix(10) ?? "")
        cell.lb_content.text = review.content
        guard let rating = review.authorDetails?.rating, rating != 0 else {
            cell.v_rating.isHidden = true
            return cell
        }
        cell.lb_rating.text = String(rating)
        return cell
    }
}
