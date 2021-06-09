//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nirbhay Singh on 09/06/21.
//

import Foundation
struct MemoryGame<CardContent>{
    private(set) var cards:Array<Card>
    func choose(_ card: Card){
        
    }
    struct Card{
        var isFaceUp:Bool = false
        var isMatched:Bool = false
        var content:CardContent
    }
    init(cardPairsCount:Int,createCardContent: (Int)->CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<cardPairsCount{
            let content:CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
}
