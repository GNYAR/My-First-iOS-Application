//
//  Carousel.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/30.
//

import SwiftUI

struct Carousel: View {
  @State private var index = 0
  
  var body: some View {
    TabView(selection: $index) {
      ForEach((0..<4), id: \.self) { index in
        Image("Carousel_\(index + 1)")
          .resizable()
          .scaledToFit()
          .frame(height:150)
          .clipShape(RoundedRectangle(cornerRadius: 8))
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    .padding(.horizontal, 12)
  }
}
