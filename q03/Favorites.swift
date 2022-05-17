//
//  Favorites.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct Favorites: View {
    
    @Binding var isChecked: [Bool]
    @Binding var rating: [String]
    @Binding var view: [Int]
    
    func getFavorites() -> [Int] {
        var courses = [Int]()
        for i in 0..<isChecked.count {
            if isChecked[i] {
                courses.append(i)
            }
        }
        return courses
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(getFavorites(), id: \.self) {item in
                    NavigationLink {
                                DetailView(task: testData[item], isChecked: $isChecked[item], rating: $rating[item], view: $view)
                            } label: {
                                Text("IT\(testData[item].courseNumber) \(testData[item].courseName)")
                                   
                            }
                        
                }
            }
            .navigationBarTitle("Favorite Courses")
        }
    }
    
}

