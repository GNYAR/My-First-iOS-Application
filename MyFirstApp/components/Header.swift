//
//  Events.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct Header: View {
  let label: String
  
  init(_ label: String) {
    self.label = label
  }
  
  var body: some View {
    HStack {
      Text(label)
        .font(.title3)
        .fontWeight(.semibold)
        .tracking(4)
      
      Spacer()
      
      Image(systemName: "arrow.right")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundColor(.secondary)
        .background(
          Circle()
            .fill(Color.gray.opacity(0.1))
            .frame(width: 32, height: 32)
        )
        .offset(x: -16)
    }
    .padding(.horizontal, 12)
  }
}
