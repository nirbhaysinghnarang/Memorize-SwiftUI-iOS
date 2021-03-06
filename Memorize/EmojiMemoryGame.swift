//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nirbhay Singh on 09/06/21.
//

import SwiftUI


class EmojiMemoryGame{
    static let emojis:[String] = ["ð","ð","ð","ðĪĐ","ð","ð","ðĨ°","ð","ð","ðĪŠ","ðĒ","ð"]
    var model:MemoryGame<String> = MemoryGame<String>(cardPairsCount: 3, createCardContent: { index  in
        emojis[index]
    })
}

