//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nirbhay Singh on 30/05/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
