//
//  EnrollCoursesView.swift
//  E_Learning
//
//  Created by Xeven Dev on 31/08/2024.
//

import SwiftUI

struct EnrolledCourseView: View {
    let course: Course

    var body: some View {
        GeometryReader { geometry in
            LazyVStack {
                Image(course.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
                    .cornerRadius(8)

                Text(course.title)
                    .font(.footnote)
                    .foregroundColor(.primary)
            }
            .padding(5)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .frame(width: geometry.size.width, height: geometry.size.width * 1.2)
        }
        .frame(width: 100, height: 120) 
    }
}


#Preview {
    EnrolledCourseView(course: Course(id: UUID(), title: "Sample Course", description: "This is a detailed description of the course.", price: 99.99, imageName: "Base"))
}
