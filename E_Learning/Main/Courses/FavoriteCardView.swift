//
//  FavoriteCardView.swift
//  E_Learning
//
//  Created by Xeven Dev on 05/09/2024.
//

import SwiftUI

struct FavoriteCardView: View {
   
    @StateObject  var viewModel = CourseViewModel()
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            VStack {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.favCourses) { course in

                    FavoriteCard(course: course)
                        
                    }
                }

            }
        }
    }
}

//#Preview {
//    FavoriteCardView(course: Course(id:UUID(), title:"", description: "", price: 100, imageName: "base"))
//}
