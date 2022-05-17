//
//  Ranking.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct Ranking: View {
    @Binding var isChecked: [Bool]
    @Binding var ranking: [String]
    @Binding var view: [Int]
    
    func orderRanking() -> [Int] {
        var courses: [Int] = [Int]()
        
        let sorted = Array(Set(ranking)).sorted{ $0.localizedStandardCompare($1) == .orderedDescending }.filter{ $0 > "0" }
        for item in sorted {
            courses.append(contentsOf: ranking.enumerated().filter({ $0.element == item }).map({ $0.offset }))
        }
        return Array(courses)
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(orderRanking(), id: \.self) {i in
                   VStack(alignment: .leading, spacing: nil) {
                        
                            NavigationLink {
                                DetailView(task: testData[i], isChecked: $isChecked[i], rating: $ranking[i], view: $view)
                            } label: {
                                Text("IT\(testData[i].courseNumber) \(testData[i].courseName)")
                                   }
                            
                        
                        
                        Text("Rating: \(ranking[i])")
                            .foregroundColor(Color.green)
                           
                    }
                }
            }
            .navigationBarTitle("Top Rated")
        }
    }
}

