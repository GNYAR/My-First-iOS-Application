//
//  Toolbar.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/28.
//

import SwiftUI

struct Toolbar: View {
  let unreadNotificationCount: Int
  
  var body: some View {
    HStack {
      Image("FullMenuLogo") // Logo
        .resizable()
        .frame(width: 60, height: 60)
      
      Spacer()
      
      HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
        MyCard()
        
        Notification(unreadCount: unreadNotificationCount)
      }
      .padding(.trailing, 12)
    }
  }
}



struct MyCard: View {
  var body: some View {
    ZStack { // Card
      RoundedRectangle(cornerRadius: 2)
        .fill(Color.red)
        .frame(width: 14, height: 24)
        .rotationEffect(.degrees(60))
      
      Circle()
        .fill(Color.white)
        .frame(width: 6, height: 6)
        .offset(x: 4, y: 1)
      
      Circle()
        .fill(Color.white)
        .frame(width: 5, height: 5)
        .offset(x: -2, y: -2)
      
      Circle()
        .fill(Color.white)
        .frame(width: 3, height: 3)
        .offset(x: -3, y: 4)
    }
  }
}

struct Notification: View {
  let unreadCount: Int
  
  
  var body: some View {
    ZStack {
      Image(systemName: "bell")
        .resizable()
        .frame(width: 24, height: 24)
        .foregroundColor(.gray)
      
      ZStack {
        Text(String(unreadCount))
          .font(Font.system(size: 16))
          .foregroundColor(.white)
          .frame(width: 18, height: 18)
          .background(Color.yellow)
          .clipShape(Circle())
        
        Circle()
          .stroke(Color.white, lineWidth: 2)
          .frame(width: 18, height: 18)
      }
      .offset(x: 8, y: -8)
    }
  }
}
