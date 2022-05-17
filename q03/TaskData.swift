//
//  TaskData.swift
//  q03
//
//  Created by minglu zeng on 4/19/22.
//

import Foundation
struct TaskData: Identifiable, Equatable {
    var id: UUID
    var courseNumber: Int
    var courseName: String
    var grade: Double
    var description: String
    
    
    init(id: UUID, courseNumber: Int, courseName: String, grade: Double, description: String) {
        self.id = id
        self.courseNumber = courseNumber
        self.courseName = courseName
        self.grade = grade
        self.description = description
    }}

var testData = [
    TaskData(id: UUID(), courseNumber: 140, courseName: "Interacting In A Digital World", grade: 85.0, description: "This course provides foundation concepts of computers and information technologies and their application in today's world. Lecture and lab. Not for credit IT Major or minor."),
    TaskData(id: UUID(), courseNumber: 180, courseName: "C++ Programming", grade: 78.0, description: "Introduction to the C++ programming language with emphasis on pointers, dynamic memory management, and templates."),
    TaskData(id: UUID(), courseNumber: 225, courseName: "Computer Organization", grade: 80.0, description: "Introduction to computer organization, internal representation of instructions and data, and interaction between software and hardware components."),
    TaskData(id: UUID(), courseNumber: 254, courseName: "Hardware And Software Concepts", grade: 60.0, description: "Overview of nature and interrelationships of computer architectures, hardware, operating systems, data types, microcontrollers, virtualization, storage technologies, and filesystems."),
    TaskData(id: UUID(), courseNumber: 261, courseName: "Systems Development I", grade: 56.0, description: "Information systems development, development methodologies, analysis and design techniques and tools, relational database concepts."),
    TaskData(id: UUID(), courseNumber: 276, courseName: "Data Communications", grade: 66.0, description: "Hardware and software used in data communications and networking. Network types, architectures, protocols and standards. Local area and packet networks. Formerly IT 375."),
    TaskData(id: UUID(), courseNumber: 310, courseName: "Cloud Networking", grade: 75.0, description: "Teaches students how to design, analyze, optimize, deploy, configure, and manage the networks of modern cloud data centers."),
    TaskData(id: UUID(), courseNumber: 370, courseName: "Server Management", grade: 88.0, description: "Build, manage and troubleshoot server hardware and software."),
    TaskData(id: UUID(), courseNumber: 378, courseName: "Database Processing", grade: 82.0, description: "Database concepts, emphasis on relational databases, SQL, data modeling, database design, DBMS functions, database application programming, current trends, design project."),
    TaskData(id: UUID(), courseNumber: 441, courseName: "Big Data", grade: 76.0, description: "Covers fundamental concepts, principles, algorithms and advanced topics in large, complex data from data generation, storage, management, transfer to analytics."),
    TaskData(id: UUID(), courseNumber: 483, courseName: "Advanced Operating Systems", grade: 73.0, description: "Advanced topics in operating systems, including operating system concepts and design, systems programming, networked and distributed systems, and storage systems."),
    TaskData(id: UUID(), courseNumber: 495, courseName: "Information Technology Capstone", grade: 68.0, description: "A culminating course emphasizing actual design and implementation of information systems by applying systems development, programming, and project management concepts.")
]

