//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Şevval Mertoğlu on 2.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                AsyncImage(url: URL(string: "https://www.clker.com/cliparts/0/0/b/6/13845398822090716857butterfly2_large.jpg")!) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                
                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.red)
                }
            }.navigationTitle(Text("Superhero Book"))
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
