//
//  CartViewModel.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import Foundation
class CartViewModel: ObservableObject {
    @Published var cartItems: [CartItem] = []
    @Published var favItem: [CartItem] = []
    var totalCost: Double {
        cartItems.reduce(0) { $0 + $1.course.price }
    }
    
    func addToCart(course: Course) {
        let cartItem = CartItem(course: course)
        print("Adding course to cart: \(course.title), Price: \(course.price)")  // Debugging output
        DispatchQueue.main.async {
            self.cartItems.append(cartItem)
        }
                print("Current cart items: \(cartItems.map { $0.course.title })")
    }
    
    func addToFav(course:Course) {
        var fav = CartItem(course: course)
        favItem.append(fav)
    }
    
}
