//
//  CoursesView.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import SwiftUI

struct CoursesView: View {
    @StateObject private var viewModel = CourseViewModel()
    @StateObject private var cartVM = CartViewModel()
    @State private var showEnrolledCourses = false
       let columns = [
           GridItem(.flexible()),
           GridItem(.flexible())
       ]
       
       var body: some View {
           ZStack {
               NavigationView {
                          ScrollView {
                              LazyVGrid(columns: columns, spacing: 20) {
                                  ForEach(viewModel.courses) { course in
                                      NavigationLink(destination: CourseDetailView(course: course)) {
                                          CourseCardView(course: course, cartVM: cartVM, viewModel: viewModel)
                                      }
                                  }
                              }
                              .padding()
                              // Enrolle`d Courses Section
                                               if !viewModel.enrolledCourses.isEmpty {
                                                   Text("Enrolled Courses")
                                                       .font(.headline)
                                                       .padding(.leading)
                                                       .padding(.top)

                                                   ScrollView(.horizontal, showsIndicators: false) {
                                                       HStack(spacing: 20) {
                                                           ForEach(viewModel.enrolledCourses) { course in
                                                            EnrolledCourseView(course:course)
                                                           }
                                                       }
                                                       .padding(.leading)
                                                   }
                                                   .padding(.bottom)
                                               }
                          }
                          .navigationTitle("Courses")   .navigationBarItems(trailing:
                                                                                NavigationLink(destination: CartView(cartVM: cartVM)) {
                              HStack {
                                  Image(systemName: "cart")
                                  Text("\(cartVM.cartItems.count)")
                              }
                          }
                          )
               }
         
           }      .toast(isShowing:$viewModel.isShowingToast, message:viewModel.toastMessage ?? "")
    
       }
}

#Preview {
    CoursesView()
}
