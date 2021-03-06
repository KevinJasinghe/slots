//
//  ContentView.swift
//  Shared
//
//  Created by Kevin Jasinghe on 2022-02-02.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text("SwiftUI Slots")
                    .font(.largeTitle)
                Spacer()
                Text("Credits: "+String(credits))
                Spacer()
                HStack{
                    Image("fruit\(slot1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("fruit\(slot2)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("fruit\(slot3)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                Button("Spin") {
                    // Randomize the numbers
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                  
                    // Update credits based on match or not
                    if slot1 == slot2 && slot2 == slot3 {
                        // Match
                        credits += 15
                    }
                    else {
                        credits -= 5
                    }
                }
                // Set padding for all edges
                .padding()
                // Then adjust the left and right padding to be bigger
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                Spacer()
                
            }
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
