//
//  ContentView.swift
//  TestCardsApp
//
//  Created by Andrei Cirlan on 20.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Spacer()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card-2")
                    Spacer()
                    Image("card-3")
                    Spacer()
                }
                Spacer()
                Button(action: {
                    print("Click")
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
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
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
