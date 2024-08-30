//
//  EnrollCourseButton.swift
//  E_Learning
//
//  Created by Arslan Dev on 31/08/2024.
//

import SwiftUI

struct EnrollCourseButton: View {
    var enrollCourseTap:(()->())
    var isEnrolled:Bool
    var body: some View {
        Button(action: {
            enrollCourseTap()
        }) {
            Text(isEnrolled ? "Unrolled" : "Enroll")
                .font(.headline)
                .foregroundColor(isEnrolled ? .green:.gray)
                .padding()
                .cornerRadius(8)
        }
    }
}

//#Preview {
//    EnrollCourseButton()
//}
