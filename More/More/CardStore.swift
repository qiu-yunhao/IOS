//
//  CardStore.swift
//  More
//
//  Created by hello on 2021/11/18.
//

import UIKit

class CardStore{
    var cards = [Card]()
    
    init(num : Int){
        for _ in 0..<num{
            cards.append(Card.init(Random: true))
        }
    }
    
    func getCard(num : Int) -> Card{
        return cards[num]
    }
}
