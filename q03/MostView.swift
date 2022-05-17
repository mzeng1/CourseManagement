//
//  MostView.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct MostView: View {
    @Binding var isChecked: [Bool]
    @Binding var rating: [String]
    @Binding var viewedTimes: [Int]
    
    func orderViewed() -> [Int] {
        var courses: [Int] = [Int]()
        let sortedViews = Array(Set(Array(viewedTimes.filter{ $0 >= 1 }))).sorted(by: >)
        for item in sortedViews {
            //courses.append(contentsOf: viewedTimes.indices.filter({ items[$0] == item }))
            courses.append(contentsOf: viewedTimes.enumerated().compactMap { $0.element == item ? $0.offset : nil })
        }
        return Array(courses.prefix(5))
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            NavigationView {
                List(orderViewed(), id: \.self) {i in
                    
                    VStack(alignment: .leading, spacing: nil) {
                        
                            NavigationLink {
                                DetailView(task: testData[i], isChecked: $isChecked[i], rating: $rating[i], view: $viewedTimes)
                            } label: {
                                Text("IT\(testData[i].courseNumber) \(testData[i].courseName)")
                                    }
                            
                        
                        
                        Text("Times Viewed: \(viewedTimes[i])").foregroundColor(Color.green)
                    }
                   
                }
                .navigationBarTitle("Most Viewed")
            }
        }
    }
}

