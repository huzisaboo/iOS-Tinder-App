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
            ZStack {
                VStack{
                    Text("All cards over!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.medium)
                }
                
                ForEach(Card.data.reversed()) { card in
                    
                    CardView(card: card).padding(8)
                }
                
            }.zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
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
    @State var card : Card
    let cardGradient = Gradient(colors: [Color.black.opacity(0),Color.black.opacity(0.5)])
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(card.imageName).resizable()
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            
            VStack{
                Spacer()
                VStack(alignment:.leading)
                {
                    HStack{
                        Text(card.name).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding(.leading)
                        Text(String(card.age)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                    }
                    Text(card.bio).foregroundColor(Color.white).padding([.leading, .bottom])
                }
            }
            
            HStack{
                Image("like")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x / 10 - 1))
                Spacer()
                Image("nope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x/10 * -1 - 1))
            }
            
            
        }.cornerRadius(10)
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture(
        
            DragGesture()
            
                .onChanged{ value in
                    //User dragging the card
                    withAnimation(.default)
                    {
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                        
                    }
                    
                }
            
                .onEnded{ value in
                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 8, initialVelocity: 0))
                    {
                        switch value.translation.width{
                        case 0...100:
                            card.x = 0; card.y = 0; card.degree = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.y = 0; card.degree = 0
                        case let x where x < -100:
                            card.x = -500; card.degree = -12
                        default: card.x = 0 ; card.y = 0
                        }
                    }
                    
                }
            
        )
    }
}
