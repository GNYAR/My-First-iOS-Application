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
      Color(.white).ignoresSafeArea() // Background
      
      Toolbar(unreadNotificationCount: 3)
      
      ScrollView {
        VStack(alignment: .leading, spacing: 8) {
          Text("午安！").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          
          Carousel()
        }
      }
      .frame(
        minWidth: 0,
        maxWidth: .infinity,
        minHeight: 0,
        maxHeight: .infinity,
        alignment: .topLeading
      )
      .padding(EdgeInsets(top: 60, leading: 12, bottom: 0, trailing: 12))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
