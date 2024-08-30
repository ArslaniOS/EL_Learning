//
//  Courses+VM .swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import Foundation
import SwiftUI

    class CourseViewModel:ObservableObject {
        @Published var courses: [Course] = []
        @Published var isShowingToast: Bool = false
        @Published var toastMessage: String?
        init() {
            self.courses = [
                Course(id: UUID(), title: "SwiftUI Basics", description: "Learn the basics of SwiftUI.", price: 99.99, imageName: "Base"),
                Course(id: UUID(), title: "Advanced SwiftUI", description: "Dive deeper into advanced SwiftUI techniques.", price: 149.99, imageName: "pro"),
                Course(id: UUID(), title: "Combine Framework", description: "Introduction to the Combine framework.", price: 119.99, imageName: "combine")
            ]
        }

    
           var enrolledCourses: [Course] {
               courses.filter { $0.isEnrolled }
           }
        
        func toggleEnrollment(for course: Course) {
              if let index = courses.firstIndex(where: { $0.id == course.id }) {
                  courses[index].isEnrolled.toggle()
              }
          }
    }





