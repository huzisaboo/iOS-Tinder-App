//
//  ContentView.swift
//  Paired
//
//  Created by Huzaifa Saboowala on 4/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            //Top Stack
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("top_left_profile")
                }
                Button(action:{}){
                    Image("tinder-icon").resizable().aspectRatio(contentMode: .fit)
                        .frame(height:45)
                }
                Button(action:{}){
                    
                }
            }
            
            //Card
            RoundedRectangle(cornerRadius: 8.0)
            
            //Bottom Stack
            HStack{
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
