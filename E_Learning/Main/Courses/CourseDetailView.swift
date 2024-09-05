//
//  DetailCourse_View.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import SwiftUI

struct CourseDetailView: View {
    let course: Course

   
     var body: some View {
         ScrollView {
             LazyVStack{
                 LazyVStack{
                     HorizontalTabBar(title:course.title)
                 }.padding([.horizontal, .bottom])
                     .background(Color.white.ignoresSafeArea())
             }
             LazyVStack{
                 CourseDetailCardView(course: course)
             }
    
         }.navigationBarBackButtonHidden()
     }
}

//#Preview {
//    CourseDetailView(course: Course(id: UUID(), title: "Sample Course", description: "This is a detailed description of the course.", price: 99.99, imageName: "Base"),)
//}
