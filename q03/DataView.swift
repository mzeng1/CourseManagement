//
//  DataView.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct DataView: View {
    @State private var selection = 1
    @State var isChecked: [Bool] = Array(repeating: false, count: testData.count)
    @State var rating: [String] = Array(repeating: "", count: testData.count)
    @State var view: [Int] = Array(repeating: 0, count: testData.count)
    
    var body: some View {
        TabView(selection: $selection) {
            TaskView(isChecked: $isChecked, taskRating: $rating, taskView: $view)
                .tabItem{
                    VStack(alignment: .center, spacing: nil) {
                        Image(systemName: "archivebox.fill")
                        Text("All")
                    }
                }
                .tag(1)
            MostView(isChecked: $isChecked, rating: $rating, viewedTimes: $view)
                .tabItem{
                    VStack(alignment: .center, spacing: nil) {
                        Image(systemName: "eye.circle.fill")
                        Text("Most Viewed")
                    }
                }
                .tag(2)
            Favorites(isChecked: $isChecked, rating: $rating, view: $view)
                .tabItem{
                    VStack(alignment: .center, spacing: nil) {
                        Image(systemName: "heart.fill")
                        Text("Favorites")
                    }
                }
                .tag(3)
            Ranking(isChecked: $isChecked, ranking: $rating, view: $view)
                .tabItem{
                    VStack(alignment: .center, spacing: nil) {
                        Image(systemName: "hand.thumbsup.fill")
                        Text("Rating")
                    }
                }
                .tag(4)
            Settings(isChecked: $isChecked, rating: $rating, view: $view)
                .tabItem{
                    VStack(alignment: .center, spacing: nil) {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                }
                .tag(5)
        }    }
    
}

