//
//  ContentView.swift
//  Movie
//
//  Created by Mac on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(
                    destination: MovieDetailView(movieName: "Home Alone", mainCharachters: ["Macaulay Culkin", "Joe Pesci", "Daniel "], movieImage: "homealone"),
                    label: {
                        movieRow(movieImage: "homealone", movieName: "Home Alone", movieChar: ["Macaulay Culkin", "Joe Pesci", "Daniel "])
                    })
                NavigationLink(
                    destination: MovieDetailView(movieName: "Harry Potter", mainCharachters: ["Richard Harris", "Maggie Smith", "Ian Hart"], movieImage: "harrypotter"),
                    label: {
                movieRow(movieImage: "harrypotter", movieName: "Harry Potter", movieChar: ["Richard Harris", "Maggie Smith", "Ian Hart"])
                    })
                NavigationLink(
                    destination: MovieDetailView(movieName: "Fast & Furios", mainCharachters: ["Paul Walker", "Vin Diesel", "Rick Yune"], movieImage: "fast&furios"),
                    label: {
                movieRow(movieImage: "fast&furios", movieName: "Fast & Furios", movieChar: ["Paul Walker", "Vin Diesel", "Rick Yune"])
                    })
                
                    
                
            }.navigationBarTitle("Movies")
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
        }.frame(width: 390, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}
