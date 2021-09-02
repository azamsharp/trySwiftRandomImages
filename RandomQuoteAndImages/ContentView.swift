//
//  ContentView.swift
//  RandomQuoteAndImages
//
//  Created by Mohammad Azam on 7/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var randomImageListVM = RandomImageListViewModel()
    
    var body: some View {
        NavigationView {
            List(randomImageListVM.randomImages) { randomImage in
                
                HStack {
                    randomImage.image.map {
                        Image(uiImage: $0)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Text(randomImage.quote)
                    
                }
                
            }.task {
                    await randomImageListVM.getRandomImages(ids: Array(100...120))
            }
            .navigationTitle("Random Images/Quotes")
            .navigationBarItems(trailing: Button(action: {
                
                Task {
                    await randomImageListVM.getRandomImages(ids: Array(100...120))
                }
                
            }, label: {
                Image(systemName: "arrow.clockwise.circle")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
