//
//  MovieDetailView.swift
//  Movie
//
//  Created by Mac on 1/2/21.
//

import SwiftUI

struct MovieDetailView: View {
    let movie : movie
    var body: some View {
        ZStack{
            Group{
                Image(movie.image)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.ignoresSafeArea()
            VStack(alignment: .center){
                Image(movie.image).resizable().scaledToFit().clipShape(Circle())
                    .frame(width: 300 )
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(movie.name).font(.system(size: 50)).bold()
                
                Text(movie.characters.joined(separator: ", ")).font(.title)
                Spacer()
            }.foregroundColor(.white).frame(width: 400).padding()
        }
    }
}

/*struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
*/
