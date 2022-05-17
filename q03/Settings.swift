//
//  Settings.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct Settings: View {
    @Binding var isChecked: [Bool]
    @Binding var rating: [String]
    @Binding var view: [Int]
    @State var darkMode = false
    
    func clearFavorites() {
        for i in 0..<isChecked.count {
            isChecked[i] = false
        }
    }
    
    func clearTimesViewed() {
        for i in 0..<view.count {
            view[i] = 0
        }
    }
    
    func clearRating() {
        for i in 0..<rating.count {
            rating[i] = ""
        }
    }
    
    var body: some View {
     
        VStack (alignment: .leading, spacing: nil, content:{
                Text("Settings").font(.title)
                Button("Clear the Favorites") {
                    clearFavorites()
                }.padding(.top, 10)
                Button("Clear Times Viewed") {
                    clearTimesViewed()
                }.padding(.top, 10)
                Button("Clear Rating") {
                    clearRating()
                }.padding(.top, 10)
            Button("Color Scheme") {
                darkMode.toggle()
                }.padding(.top, 10)
        })
        .preferredColorScheme(darkMode ? .dark : .light)
    }
    }

