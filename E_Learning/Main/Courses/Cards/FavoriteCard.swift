//
//  FavoriteCard.swift
//  E_Learning
//
//  Created by Xeven Dev on 05/09/2024.
//

import SwiftUI

struct FavoriteCard: View {
    let course : Course
    var body: some View {
        LazyVStack(alignment: .center,spacing: 0) {

            
                   // Display the course image
                   Image(course.imageName)
                       .resizable()
                       .scaledToFit()
                       .frame(height:100)
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

#Preview {
    FavoriteCard(course:Course(id:UUID(), title:"", description: "", price: 100, imageName: "base"))
}
