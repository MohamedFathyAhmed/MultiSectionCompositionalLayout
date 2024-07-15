//
//  LandscapeCollectionViewCell.swift
//  MultiSectionCompositionalLayout
//
//  Created by fathi on 12/07/2024.
//

import UIKit

final class LandscapeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitleLbl: UILabel!
    
    func setup(_ item: ListItem) {
        cellImageView.image = UIImage(named: item.image)
        cellTitleLbl.text = item.title
    }
}
