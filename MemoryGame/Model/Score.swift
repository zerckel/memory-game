//
//  Score.swift
//  MemoryGame
//
//  Created by mjm on 07/01/2021.
//  Copyright © 2021 antoine. All rights reserved.
//

import Foundation

struct Score {
    var score: Int
    var date = Date()
    var formatedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier:"FR-fr")
        dateFormatter.dateFormat = "E d MMM Y"
        return dateFormatter.string(from: date).capitalized
    }

    init(score:Int) {
        self.score = score
    }
}
