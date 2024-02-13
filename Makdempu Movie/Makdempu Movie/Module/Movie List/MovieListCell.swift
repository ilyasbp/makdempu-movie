//
//  MovieListCell.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//

import UIKit

class MovieListCell: UICollectionViewCell {
    public static var indentifier = "movie-list-cell"
    
    @IBOutlet weak var v_poster: UIView!
    @IBOutlet weak var iv_poster: UIImageView!
    @IBOutlet weak var lb_title: UILabel!
    @IBOutlet weak var lb_date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        v_poster.layer.cornerRadius = 6
        v_poster.layer.masksToBounds = true
    }

}
