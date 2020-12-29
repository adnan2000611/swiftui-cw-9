//
//  ContentView.swift
//  Movie
//
//  Created by Mac on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            
            movieRow(movieImage: "homealone", movieName: "Home Alone", movieChar: ["Macaulay Culkin", "Joe Pesci", "Daniel "])
            movieRow(movieImage: "harrypotter", movieName: "Harry Potter", movieChar: ["Richard Harris", "Maggie Smith", "Ian Hart"])
            movieRow(movieImage: "fast&furios", movieName: "Fast & Furios", movieChar: ["Paul Walker", "Vin Diesel", "Rick Yune"])
            
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movieRow: View {
    let movieImage : String
    let movieName : String
    let movieChar : [String]
    
    var body: some View {
        HStack{
            Image(movieImage).resizable().aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle())
            VStack{
                Text(movieName).font(.largeTitle)
                    Text(movieChar.joined(separator: ", "))
                
            }
        }
    }
}
