//
//  Navigation.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct Navigation: View {
  let navigationItems: [Item] = [
    Item(icon: "house", label: "首頁", iconColor: Color.gray),
    Item(icon: "percent", label: "專屬任務", iconColor: Color.gray),
    Item(icon: "dollarsign.circle.fill", label: "付款/儲值", iconColor: Color.red),
    Item(icon: "p.circle", label: "點數商城", iconColor: Color.gray),
    Item(icon: "person", label: "我的帳號", iconColor: Color.gray)
  ]
  
  var selected: UUID { navigationItems[0].id }
  
  func getIconColor(_ item: Item) -> Color {
    selected == item.id ? Color.red : item.iconColor
  }
  
  func getIconSize(_ item: Item) -> CGFloat {
    item.iconColor == Color.red ? 48 : 24
  }
  
  var body: some View {
    Divider()
      .offset(y: 20)
    
    LazyVGrid(columns: getFlexibleGridItems(5, alignment: .bottom)) {
      ForEach(navigationItems) { x in
        VStack {
          Image(systemName: x.icon)
            .resizable()
            .frame(width: getIconSize(x), height: getIconSize(x))
            .foregroundColor(getIconColor(x))
          
          Text(x.label)
            .font(.footnote)
            .foregroundColor(selected == x.id ? Color.red : Color.gray)
        }
      }
    }
  }
}
