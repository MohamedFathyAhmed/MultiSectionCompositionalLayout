//
//  CollectionViewCompositional.swift
//  MultiSectionCompositionalLayout
//
//  Created by fathi on 13/07/2024.
//

import Foundation
import UIKit
func createUICollectionViewCompositionalLayout() -> NSCollectionLayoutSection {
    let num: Int = 3
    switch num {
        case 0:
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(200)))
            item.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(100)),
                                                           subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            return section
            
            
            
            
            
            
            
            
            
            
            
            
        case 1:
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(0.5),
                heightDimension: .fractionalHeight(1)))
            item.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(90)),
                                                           subitems: [item,item])
            let section = NSCollectionLayoutSection(group: group)
            return section
            
            
            
            
            
            
            
            
            
            
            
            
            
        case 2:
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            item.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .absolute(80), heightDimension: .absolute(80)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuous
            section.boundarySupplementaryItems = [
                .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                ,  .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionFooter, alignment: .top)
            ]
            return section
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        case 3:
            let halfItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),heightDimension: .fractionalHeight(1)))
            halfItem.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            
            let fullItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),heightDimension: .fractionalHeight(1)))
            fullItem.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            
            let verticalGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(0.5),
                heightDimension: .fractionalHeight(1)),
                subitem: fullItem,
                count: 2)
            
            let horizontalGroup = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5)), subitems: [halfItem,verticalGroup])
               
            
            let Item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),heightDimension: .fractionalHeight(0.5)))
            Item.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
            
            let Group = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(0.7),
                heightDimension: .fractionalHeight(0.5)),
                subitems: [Item,horizontalGroup])
            
            let section = NSCollectionLayoutSection(group: Group)
            section.orthogonalScrollingBehavior = .groupPagingCentered
            return section
            
            
        
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        default:
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(70), heightDimension: .absolute(70)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuous
            section.interGroupSpacing = 10
            section.contentInsets = .init(top: 0, leading: 10, bottom: 30, trailing: 10)
            section.boundarySupplementaryItems = [ .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)]
            section.supplementariesFollowContentInsets = false
            return section
    }
}
