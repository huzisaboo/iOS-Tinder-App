//
//  Card.swift
//  Paired
//
//  Created by Huzaifa Saboowala on 07/04/2021.
//

import UIKit


//MARK: - DATA
struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let age: Int
    let bio: String
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "Huzaifa", imageName: "p10", age: 24, bio: "I'm awesome and I know it!"),
            Card(name: "Shreyas", imageName: "p9", age: 23, bio: "Gamer for life!"),
            Card(name: "Rosie", imageName: "p0", age: 21, bio: "Insta - roooox 💋"),
            Card(name: "Betty", imageName: "p1", age: 23, bio: "Like exercising, going out, pub, working 🍻"),
            Card(name: "Abigail", imageName: "p2", age: 26, bio: "hi, let's be friends"),
            Card(name: "Zoé", imageName: "p3", age: 20, bio: "Law grad"),
            Card(name: "Tilly", imageName: "p4", age: 21, bio: "Follow me on IG"),
            Card(name: "Penny", imageName: "p5", age: 24, bio: "J'aime la vie et le vin 🍷"),
            Card(name: "Sofia", imageName: "p6", age: 26, bio: "E Plata o Pommo!"),
            Card(name: "Julie", imageName: "p7", age: 25, bio: "Living to the fullest!"),
            Card(name: "Gloria", imageName: "p8", age: 24, bio: "Cest La Vie!"),
        ]
    }
    
}
