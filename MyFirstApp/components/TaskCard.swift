//
//  TaskCard.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/30.
//

import SwiftUI


struct TaskCard: View {
  var body: some View {
    ZStack{
      TaskCardBackground()
      CalendarImage()
        .offset(x: -125, y: -8)
      TaskCardText()
        .offset(x: -25)
      TaskCardButton()
        .offset(x: 100)
    }
  }
}

struct TaskCardBackground: View {
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.yellow)
        .frame(height: 100)
      
      Circle()
        .fill(Color.white)
        .frame(width: 30, height: 30)
        .offset(x:175)
    }
  }
}

struct CalendarImage: View {
  var body: some View {
    ZStack {
      Image(systemName: "calendar")
        .resizable()
        .frame(width: 44, height: 40)
        .foregroundColor(.white)
      
      Rectangle()
        .fill(Color.red)
        .frame(width: 44, height: 5)
        .offset(y: -12)
      
      RoundedRectangle(cornerRadius: 10)
        .fill(Color.red)
        .frame(width: 44, height: 10)
        .offset(y: -15)
      
      
      Image(systemName: "sparkle")
        .resizable()
        .frame(width: 14, height: 14)
        .foregroundColor(.white)
        .offset(x: 25, y: -25)
      
      Image(systemName: "sparkle")
        .resizable()
        .frame(width: 4, height: 4)
        .foregroundColor(.white)
        .offset(x: 15, y: -15)
      
      Image(systemName: "sparkle")
        .resizable()
        .frame(width: 8, height: 12)
        .foregroundColor(.white)
        .offset(x: -26, y: 20)
    }
  }
}

struct TaskCardText: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      Text("天天來簽到")
        .foregroundColor(.white)
        .fontWeight(.bold)
      
      Text("開禮物 賺積分")
        .foregroundColor(.white)
        .font(.subheadline)
    }
  }
}

struct TaskCardButton: View {
  var body: some View {
    ZStack {
      Capsule()
        .stroke(Color.white)
        .frame(width: 96, height: 38)
      
      Text("立即參加")
        .foregroundColor(.white)
    }
  }
}
