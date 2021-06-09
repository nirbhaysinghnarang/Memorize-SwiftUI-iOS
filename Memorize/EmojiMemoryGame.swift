//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nirbhay Singh on 09/06/21.
//

import SwiftUI


class EmojiMemoryGame{
    static let emojis:[String] = ["😀","😛","😝","🤩","😌","😍","🥰","🙃","😆","🤪","😢","😙"]
    var model:MemoryGame<String> = MemoryGame<String>(cardPairsCount: 3, createCardContent: { index  in
        emojis[index]
    })
}

