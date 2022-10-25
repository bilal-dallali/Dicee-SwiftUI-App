//
//  ContentView.swift
//  Dicee-SwiftUI-App
//
//  Created by Bilal Dallali on 25/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(5)
                }
                .background(Color(red: 0.61, green: 0.11, blue: 0.12))
                Spacer()
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        VStack {
            Image("dice\(n)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 130, height: 130)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
