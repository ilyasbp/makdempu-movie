//
//  ReviewCell.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//

import UIKit

class ReviewCell: UITableViewCell {
    static let identifier = "review-cell"

    @IBOutlet weak var v_review: UIView!
    @IBOutlet weak var iv_portrait: UIImageView!
    @IBOutlet weak var v_rating: UIView!
    @IBOutlet weak var lb_rating: UILabel!
    @IBOutlet weak var lb_name: UILabel!
    @IBOutlet weak var lb_date: UILabel!
    @IBOutlet weak var lb_content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        v_review.layer.cornerRadius = 6
        v_rating.layer.masksToBounds = true
        iv_portrait.layer.cornerRadius = iv_portrait.frame.width / 2
        iv_portrait.clipsToBounds = true
    }
}
