//
//  ELBackButton.swift
//  E_Learning
//
//  Created by Arslan Dev on 30/08/2024.
//

import Foundation
import SwiftUI
struct ELBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.left")
                .font(.title3)
                .frame(width: 40, height: 40)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.gray.opacity(0.5), style: StrokeStyle())
                }
        }).buttonStyle(.plain)
    }
}

#Preview {
    ELBackButton()
}
