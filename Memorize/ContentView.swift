//
//  ContentView.swift
//  Memorize
//
//  Created by Nirbhay Singh on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["😀","😛","😝","🤩"]
    var body: some View {
        HStack{
            ForEach(emojis, id:\.self) { emoji in
                CardView(content: emoji)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct CardView: View {
    @State var isFaceUp:Bool = true
    var content:String
    var body: some View{
        ZStack(content: {
            let cardShape = Circle()
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
 
