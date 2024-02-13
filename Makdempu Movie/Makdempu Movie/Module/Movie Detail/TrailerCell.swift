//
//  TrailerCell.swift
//  Makdempu Movie
//
//  Created by Ilyas Bintang Prayogi on 13/02/24.
//

import UIKit
import youtube_ios_player_helper

class TrailerCell: UICollectionViewCell {
    
    static let identifier = "trailer-cell"

    @IBOutlet weak var v_player: YTPlayerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        v_player.layer.cornerRadius = 6
        v_player.layer.masksToBounds = true
    }

}
