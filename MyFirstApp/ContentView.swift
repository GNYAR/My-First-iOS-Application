//
//  ContentView.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/14.
//


import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color(.gray)
        .opacity(0.02)
        .ignoresSafeArea()
      
      NavigationView {
        Home()
          .navigationTitle("首頁")
          .navigationBarHidden(true)
          .navigationBarTitleDisplayMode(.inline)
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
