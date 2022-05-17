//
//  DetailView.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI


struct DetailView: View {
    let task: TaskData
    @Binding var isChecked: Bool
    @Binding var rating: String
    @Binding var view: [Int]
    
    func updateFrequency() {
        view[testData.firstIndex(where: { $0 == task})!] += 1
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: nil, content: {
            Image("ISU").resizable().aspectRatio(contentMode: .fill).frame(width: 400, height: 100).padding()
            VStack(alignment: .leading, spacing: nil) {
            HStack(alignment: VerticalAlignment.top) {
                Text("Name: ").padding(.leading).foregroundColor(.green)
                Text("IT\(task.courseNumber)  \(task.courseName)")
            }
            HStack(alignment: VerticalAlignment.top) {
                Text("Grade: ").padding(.leading).foregroundColor(.green)
                Text("\(String(format:"%.1f",(task.grade)))")
            }
            HStack(alignment: VerticalAlignment.top) {
                Text("Description: ").padding(.leading).foregroundColor(.green)
                Text("\(task.description)")
            }
            HStack(alignment: VerticalAlignment.top) {
                Text("Favorite: ").padding(.leading).foregroundColor(.green)
                isChecked ? Text("true") : Text("false")
            }
            HStack(alignment: VerticalAlignment.top) {
                Text("Rating: ").padding(.leading).foregroundColor(.green)
                Text("\(rating)")
            }
            HStack(alignment: VerticalAlignment.top) {
                Text("Time Viewed: ").padding(.leading).foregroundColor(.green)
                Text("\(view[testData.firstIndex(where: { $0 == task})!])")
            }
            }
            Spacer()
        }).navigationBarTitle(Text("Course description"),displayMode: .inline).onAppear{updateFrequency()}
            
    }
}


