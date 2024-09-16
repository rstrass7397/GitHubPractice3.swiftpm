import SwiftUI

struct ContentView: View {
    @State var array: [Task] = []
    var body: some View {
        HeaderView(tasks: $array)
        Text("Current Tasks")
            .font(.title2)
        List {
            ForEach(array, id: \.self) {currentTask in
                Text(currentTask.nameOfTask)
                    .font(.title)
                    .foregroundColor(.blue)
            }
        }
    }
}
