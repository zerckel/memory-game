//
//  Game.swift
//  MemoryGame
//
//  Created by mjm on 21/01/2021.
//  Copyright © 2021 antoine. All rights reserved.
//
import Foundation
struct Game{
    var score = Score(score:0)
    var shownCards = [Int]()
    var gameCards = [Card]()
    var matchedCards = [Int]()
    
    init() {
        start()
    }
    
    mutating func start(){
        gameCards = Card.getRandomCards()
        score = Score(score: 0)
        shownCards = [Int]()
        matchedCards = [Int]()
    }
    
    func cardAtIndex(_ index: Int) -> Card? {
        if gameCards.count > index {
            return gameCards[index]
        } else {
            return nil
        }
    }
    
    func unmatchedCardShown() -> Bool {
        return shownCards.count % 2 != 0
    }
    
    func unmatchedCard() -> Card? {
        let unmatchedCard = shownCards.first
        return cardAtIndex(unmatchedCard!)
    }
    
    func matchedCardShown(index: Int) -> Bool {
        return matchedCards.contains(index)
    }
    
    mutating func tapCard(index: Int) {
        let card = cardAtIndex(index)
        if shownCards.count == 2 {
    
            for item in shownCards {
                gameCards[item].isShown.toggle()
            }
            shownCards.removeAll()
            shownCards.append(index)
            if score.score > 0{
                score.score-=2
                print(score)
            }
            return
        }
        if (!shownCards.contains(index)) {
            if !matchedCardShown(index: index) {
            
                if unmatchedCardShown() {
                    shownCards.append(index)
                    let unmatched = unmatchedCard()!
                    if card!.equals(unmatched) {
                        matchedCards.append(shownCards.first!)
                        matchedCards.append(index)
                        score.score+=10
                        print(score)
                        shownCards.removeAll()
                    }
                }
                else {
                    shownCards.append(index)
                }
            }
        }
    }
}
