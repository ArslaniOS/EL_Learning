//
//  CartView.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var cartVM: CartViewModel
     
     var body: some View {
         VStack {
             VStack{
                 HorizontalTabBar(title: "Cart")
             }.padding([.horizontal, .bottom])
                 .background(Color.white.ignoresSafeArea())
             
             List(cartVM.cartItems) { item in
                 VStack(alignment: .leading) {
                     Text(item.course.title).font(.headline)
                     Text("$\(item.course.price, specifier: "%.2f")").font(.subheadline)
                 }
             }
             
             Text("Total Cost: $\(cartVM.totalCost, specifier: "%.2f")").font(.title)
                 .padding()
         }
        // .navigationTitle("Cart")
         .navigationBarBackButtonHidden()
         .navigationBarHidden(true)
     }
}
//
//#Preview {
//    CartView(cartVM: )
//}
