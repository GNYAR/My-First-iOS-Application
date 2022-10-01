//
//  Shortcuts.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct Shortcuts: View {
  let shortcutItems: [Item] = [
    Item(icon: "gift", label: "最新任務"),
    Item(icon: "cart", label: "隨買店取"),
    Item(icon: "bicycle", label: "歡樂送"),
    Item(icon: "text.badge.checkmark", label: "滿意度調查"),
    Item(icon: "plus.circle", label: "立即儲值"),
    Item(icon: "scroll", label: "交易紀錄")
  ]
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 22) {
        ForEach(shortcutItems) { x in
          ShortcutItem(item: x)
        }
      }
      .padding(.horizontal, 16)
    }
  }
}

struct ShortcutItem: View {
  let item: Item
  
  var body: some View {
    VStack(spacing: 12) {
      ZStack {
        Circle()
          .stroke(Color.gray)
          .frame(width: 48, height: 48)
        
        Image(systemName: item.icon)
          .resizable()
          .scaledToFit()
          .frame(height: 20)
          .foregroundColor(.yellow)
          .font(Font.body.weight(.semibold))
      }
      
      Text(item.label)
        .font(.footnote)
        .fontWeight(.light)
      
    }
  }
}
