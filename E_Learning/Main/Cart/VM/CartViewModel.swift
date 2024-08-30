//
//  CartViewModel.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import Foundation
class CartViewModel: ObservableObject {
    @Published var cartItems: [CartItem] = []
    
    var totalCost: Double {
        cartItems.reduce(0) { $0 + $1.course.price }
    }
    
    func addToCart(course: Course) {
        let cartItem = CartItem(course: course)
        cartItems.append(cartItem)
    }
}
