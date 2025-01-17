//
//  StoryCollectionViewCell.swift
//  MultiSectionCompositionalLayout
//
//  Created by fathi on 12/07/2024.
//

import UIKit

final class StoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setup(_ item: ListItem) {
        cellImageView.image = UIImage(named: item.image)
        cellImageView.layoutIfNeeded()
      //  cellImageView.layer.cornerRadius = cellImageView.frame.height / 2
    }
}
