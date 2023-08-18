//
//  ContentView.swift
//  War Card Game
//
//  Created by Andrew on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-purple")
                .resizable(resizingMode: .stretch).ignoresSafeArea()
                
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(playerScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
            
        }
       
    }
    
    func deal(){
        // Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the Score
        if playerCardValue > cpuCardValue {
            
            // Add 1 to player value
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue {
            
            // Add 1 to cpu value
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
