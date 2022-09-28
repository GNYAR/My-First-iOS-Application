//
//  ContentView.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/14.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Color(.white).ignoresSafeArea() // Background
      ScrollView {
        VStack {
          Toolbar(unreadNotificationCount: 3)
        }
        .frame(alignment: .top)
        .padding(.horizontal, 8)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
