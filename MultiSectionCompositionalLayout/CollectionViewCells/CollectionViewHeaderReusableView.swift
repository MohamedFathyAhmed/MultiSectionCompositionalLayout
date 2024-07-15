//
//  CollectionViewHeaderReusableView.swift
//  MultiSectionCompositionalLayout
//
//  Created by fathi on 12/07/2024.
//

import UIKit

final class CollectionViewHeaderReusableView: UICollectionReusableView {
    @IBOutlet weak var cellTitleLbl: UILabel!
    
    func setup(_ title: String) {
        cellTitleLbl.text = title
    }
}
