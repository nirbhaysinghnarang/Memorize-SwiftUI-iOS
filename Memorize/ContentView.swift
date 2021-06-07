//
//  ContentView.swift
//  Memorize
//
//  Created by Nirbhay Singh on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["😀","😛","😝","🤩","😌","😍","🥰","🙃","😆","🤪","😢","😙","🥸"]
    @State var emojiCount=4

    var body: some View {
        VStack{
        HStack{
            ForEach(emojis[0..<emojiCount], id:\.self) { emoji in
                CardView(content: emoji)
                }
            }
            Spacer()
            HStack{
                add_btn
                Spacer()
                remove_btn
            }
            .font(.largeTitle )
            .padding(.horizontal)
        }
    }
    var add_btn:some View{
        Button(action: {
            if(emojiCount<emojis.count){
                emojiCount = emojiCount+1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
        .frame(width: 60.0, height: 60.0)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
    var remove_btn: some View{
        Button(action: {
            if(emojiCount>1){
                emojiCount = emojiCount-1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
        .frame(width: 60.0, height: 60.0)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
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
 
