//
//  HeaderView.swift
//  GitHubPractice3
//
//  Created by Ryan S. Strass on 9/12/24.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]
    @State var enteredString = ""
    var body: some View {
        HStack{
            TextField("Add Task", text: $enteredString)
            Button(action: {
                tasks.append(Task(nameOfTask: enteredString))
            }, label: {
                Text("Add")
            })
        }
    }
}
