//
//  ContentView.swift
//  Memorize
//
//  Created by Nirbhay Singh on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    var viewModel:EmojiMemoryGame

    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 75, maximum: 100))]){
                    ForEach(viewModel.model.cards, id:\.self) {card in
                    CardView(content: card)
                        .aspectRatio(2/3,contentMode: .fit)
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel:  game)
            .preferredColorScheme(.dark)
    }
}

struct CardView: View {
    var content:String
    var body: some View{
        ZStack(content: {
            let cardShape = RoundedRectangle(cornerRadius: 10)
            if(isFaceUp){
               cardShape
                    .fill()
                    .foregroundColor(.white)
                    .padding(10)
                cardShape
                     .stroke(lineWidth: 3).fill()
                     .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    .padding(10)
                 Text(content).font(.largeTitle).foregroundColor(.red)
            }else{
                cardShape
                    .fill()
                    .padding(10)
                    .foregroundColor(.red)
            }
        }).onTapGesture {
            isFaceUp = !isFaceUp
        }
        
    }
}
 
