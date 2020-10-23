//
//  MoviesCollectioViewCell.swift
//  MoviesApp
//
//  Created by A on 20/10/2020.
//  Copyright © 2020 amr zayed. All rights reserved.
//

import UIKit

class MoviesCollectioViewCell: UICollectionViewCell {

    @IBOutlet weak var sliderImage: UIImageView!
    @IBOutlet weak var orderNowButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var cookTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    func configure(_ viewModel: SliderViewModel){
//        self.titleLabel.text = viewModel.title
//        self.orderNowButton.setTitle(viewModel.buttonTitle, for: .normal)
//        self.categoryLabel.text = viewModel.category
//        self.cookTimeLabel.text = viewModel.cookTime
//        
//        ratingView.configureWithRating(rating: viewModel.rating)
//    }
//    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        ratingView.stackView.removeAllArrangedSubviews()
//    }

}
