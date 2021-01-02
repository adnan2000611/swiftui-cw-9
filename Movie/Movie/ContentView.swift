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
            List(movies){ movie in
                NavigationLink(
                    destination: MovieDetailView(movie: movie),
                    label: {
                        movieRow(movie: movie)
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
    let movie : movie
    
    var body: some View {
        HStack{
            Image(movie.image).resizable().aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle())
            VStack{
                Text(movie.name).font(.largeTitle)
                Text(movie.characters.joined(separator: ", "))
                
            }
        }.frame(width: 390, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}
