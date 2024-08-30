//
//  AddCartButton.swift
//  E_Learning
//
//  Created by Arslan Dev on 31/08/2024.
//

import SwiftUI

struct AddCartButton: View {
    var addCardTap:(()->())
    var body: some View {
        Button(action: {
           // addToCart()
            addCardTap()
          
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.title2)
                .foregroundColor(.green)
        }
    }
}

//#Preview {
//    AddCartButton()
//}
