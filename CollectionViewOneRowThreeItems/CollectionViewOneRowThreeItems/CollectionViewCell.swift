//
//  collectionViewCell.swift
//  CollectionViewOneRowThreeItems
//
//  Created by joon-ho kil on 2020/02/20.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let ID = "CollectionViewCell"

    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
