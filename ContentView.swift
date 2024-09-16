import SwiftUI

struct ContentView: View {
    @State var array: [Task] = [Task(nameOfTask: "Mow the Lawn"), Task(nameOfTask: "Feed the Dog"), Task(nameOfTask: "Grocery Shop")]
    var body: some View {
        List {
            ForEach(array, id: \.self) {currentTask in
                Text(currentTask.nameOfTask)
            }
        }
    }
}
