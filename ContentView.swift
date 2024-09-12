import SwiftUI

struct ContentView: View {
    @State var array = ["Mow the Lawn", "Feed the Dog", "Grocery Shop"]
    var body: some View {
        List {
            ForEach(array, id: \.self) {count in
                Text(count)
            }
        }
    }
}
