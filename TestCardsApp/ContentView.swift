//
//  ContentView.swift
//  TestCardsApp
//
//  Created by Andrei Cirlan on 20.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card-2"
    @State var cpuCard = "card-9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Spacer()
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
                Button(action: {
                    
                    // generate a random number between 2 and 14
                    let playerRandomNumber = Int.random(in: 2...14)
                    let cpuRandomNumber = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card-\(playerRandomNumber)"
                    cpuCard = "card-\(cpuRandomNumber)"
                    
                    //update the score
                    if playerRandomNumber > cpuRandomNumber {
                        playerScore += 1
                    } else if playerRandomNumber < cpuRandomNumber {
                        cpuScore += 1
                    } else {
                        playerScore += 1
                        cpuScore += 1
                    }
                    
                    
                    
                }, label: {
                    Image("deal-button")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }.background(Color(hue: 0.363, saturation: 0.878, brightness: 0.411)).ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
