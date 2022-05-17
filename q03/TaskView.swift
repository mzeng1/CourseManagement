//
//  TaskView.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import SwiftUI

struct TaskView: View {
    @State var taskData = testData
    @Binding var isChecked: [Bool]
    @Binding var taskRating: [String]
    @Binding var taskView: [Int]
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: nil, content: {
                List(0..<12) {i in
                    
                    VStack(alignment: .leading, spacing: nil) {
                        HStack {
                            NavigationLink {
                                DetailView(task: taskData[i], isChecked: $isChecked[i], rating: $taskRating[i], view: $taskView)
                                
                            } label: {
                                Text("IT\(taskData[i].courseNumber) \(taskData[i].courseName)")
                                    
                                    
                                Image(systemName: isChecked[i] ? "checkmark.circle.fill" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(isChecked[i] ? .green : .gray)
                                    .font(.system(size: 20, design: .default))
                                    .onTapGesture {
                                        isChecked[i].toggle()
                                    }
                                    .padding(.horizontal, 10)
                                
                            
                            }
                            
                        }
                    
                        
                        HStack {
                            Text("Rating (0 - 100): ")
                            TextField("Integer number...", text: $taskRating[i])
                                .onChange(of: taskRating[i]) { updateTask in
                                    if !updateTask.isEmpty && CharacterSet(charactersIn: updateTask).isSubset(of: CharacterSet.decimalDigits)
                                        && Int(taskRating[i])! >= 0 && Int(taskRating[i])! <= 100 {
                                            taskRating[i] = updateTask
                                    }
                                    else {
                                        taskRating[i] = ""
                                    }
                                }
                        }
                    }
                
                }}).navigationBarTitle("Course Manage: Q01")
            }
        }
    }
    


