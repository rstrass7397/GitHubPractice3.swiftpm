import SwiftUI

struct ContentView: View {
    @State var array: [Task] = []
    var body: some View {
        HeaderView(tasks: $array)
        List {
            ForEach(array, id: \.self) {currentTask in
                Text(currentTask.nameOfTask)
            }
        }
    }
}
