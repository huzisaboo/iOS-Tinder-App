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
                    Image("top_left_profile").resizable().aspectRatio(contentMode: .fit).frame(width: 45, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Button(action:{}){
                    Image("tinder-icon").resizable().aspectRatio(contentMode: .fit)
                        .frame(height:45)
                }
                Spacer()
                Button(action:{}){
                    Image("top_right_messages").resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 55, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }.padding(.horizontal)
            
            //Card
            CardView()
            
            //Bottom Stack
            HStack(spacing: 0){
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("refresh_circle").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                Button(action: {}){
                    Image("dismiss_circle").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("super_like_circle").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("like_circle").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("boost_circle").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    let cardGradient = Gradient(colors: [Color.black.opacity(0),Color.black.opacity(0.5)])
    var body: some View {
        ZStack(alignment: .leading) {
            Image("p0").resizable()
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            
            VStack{
                Spacer()
                VStack(alignment:.leading)
                {
                    HStack{
                        Text("Username").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding(.leading)
                        Text("23").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                    }
                    Text("Hello World!").foregroundColor(Color.white).padding([.leading, .bottom])
                }
            }
        }
    }
}
