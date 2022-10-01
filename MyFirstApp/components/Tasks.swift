//
//  Tasks.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct Tasks: View {
  struct Task: Identifiable {
    let id = UUID()
    
    let img: String
    let text: String
  }
  
  let tasks: [Task] = [
    Task(img: "Task_1", text: "賺分賺優惠 好運享美味"),
    Task(img: "Task_2", text: "快來填問卷 回饋賺起來")
  ]
  
  var body: some View {
    VStack(alignment: .leading) {
      Header("專屬任務")
      
      HStack(alignment: .top, spacing: 12) {
        ForEach(tasks) { x in
          VStack(alignment: .leading, spacing: 12) {
            Image(x.img)
              .resizable()
              .scaledToFit()
              .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(x.text)
              .font(.subheadline)
          }
          .frame(width: 140)
        }
      }
      .padding(.horizontal, 12)
    }
  }
}
