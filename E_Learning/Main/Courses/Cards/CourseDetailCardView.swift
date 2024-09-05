//
//  CourseDetailCardView.swift
//  E_Learning
//
//  Created by Xeven Dev on 30/08/2024.
//

import SwiftUI

struct CourseDetailCardView: View {
    let course:Course
    var body: some View {
        LazyVStack(alignment: .leading) {
            // Display the course image
            Image(course.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .cornerRadius(8)
                .padding()
            
            // Display course details
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding([.leading, .trailing])
            
            Text(course.description)
                .font(.body)
                .padding([.leading, .trailing])
            
            Text(String(format: "$%.2f", course.price))
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.green)
                .padding([.leading, .trailing])
     
                      
            Spacer()
        }
    }
}
//
//#Preview {
//    CourseDetailCardView()
//}
