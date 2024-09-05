//
//  CourseModel.swift
//  E_Learning
//
//  Created by Xeven Dev on 31/08/2024.
//

import Foundation
struct Course: Identifiable,Equatable {
      let id: UUID
      let title: String
      let description: String
      let price: Double
      let imageName: String
      var isEnrolled: Bool = false
    var isFav: Bool = false 
}

struct CartItem:Identifiable {
    var id: UUID?
    let course: Course
}
