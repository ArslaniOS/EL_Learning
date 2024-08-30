//
//  CardView.swift
//  E_Learning
//
//  Created by Xeven Dev on 30/08/2024.
//

import Foundation
import SwiftUI
struct CourseCardView:View{
   @State var course: Course
    @ObservedObject var cartVM: CartViewModel
    @ObservedObject var viewModel: CourseViewModel
    @State var isShowingToast:Bool = false
    @State var toastMessage:String?

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                                       HStack {
                                           AddCartButton {
                                               addToCart()
                                           }
                                           Spacer()
                                           EnrollCourseButton(enrollCourseTap: {
                                               enroll()
                                           }, isEnrolled: course.isEnrolled)
                
                                       }
                
                       // Display the course image
                       Image(course.imageName)
                           .resizable()
                           .scaledToFit()
                           .frame(height: 150)
                           .cornerRadius(8)
                       
                       // Display course details
                       Text(course.title)
                           .font(.headline)
                       
                       Text(course.description)
                           .font(.subheadline)
                           .foregroundColor(.gray)
                       
                       Text(String(format: "$%.2f", course.price))
                           .font(.title3)
                           .foregroundColor(.green)
                       
     

                      
                   }
                   .padding()
                   .background(Color.white)
                   .cornerRadius(10)
                   .shadow(radius: 5)
        }
      
  
    }
    private func enroll() {
        course.isEnrolled.toggle()
        viewModel.toggleEnrollment(for: course)
       }
       
       private func addToCart() {
           cartVM.addToCart(course: course)
               viewModel.isShowingToast.toggle()
               viewModel.toastMessage = "Add To Cart"
       }
}
#Preview {
    
    CourseCardView(course: Course(id: UUID(), title: "Sample Course", description: "This is a detailed description of the course.", price: 99.99, imageName: "Base"), cartVM: CartViewModel(), viewModel:CourseViewModel())
}
