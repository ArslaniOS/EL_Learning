//
//  HorizontalTapBar.swift
//  E_Learning
//
//  Created by Xeven Dev on 30/08/2024.
//

import Foundation
import SwiftUI
struct HorizontalTabBar: View {
        let title: String
        var subheadline: String?
        var body: some View {
            VStack(alignment: .leading) {
                ELBackButton()
                    .padding(.bottom)
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.bottom, 8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                if let sub = subheadline {
                    Text(sub)
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
            }
        }
    }
