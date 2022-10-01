//
//  Events.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct Events: View {
  var body: some View {
    VStack {
      Header("強檔活動")
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 12) {
          ForEach((0..<6), id: \.self) { index in
            VStack(alignment: .leading, spacing: 12) {
              Image("Event_\(index + 1)")
                .resizable()
                .scaledToFit()
                .frame(height:125)
                .clipShape(RoundedRectangle(cornerRadius: 8))
              
              Text("2022.09.28-2022.11.01")
                .foregroundColor(.secondary)
            }
          }
        }
        .padding(.horizontal, 12)
      }
    }
  }
}
