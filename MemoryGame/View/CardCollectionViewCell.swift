//
//  CardCollectionViewCell.swift
//  MemoryGame
//
//  Created by mjm on 14/01/2021.
//  Copyright © 2021 antoine. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    func setUp(with card:Card){
        image.image = UIImage(named: card.imageName)
    }
}
