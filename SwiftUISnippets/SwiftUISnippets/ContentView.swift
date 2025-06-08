import Inject
import SwiftUI

struct ContentView: View {
    @ObservedObject private var io = Inject.observer

    var body: some View {
        VStack {
            Image(systemName: "apple.logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .imageScale(.large)
                .foregroundStyle(.black)

            Text("teset")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.bold)
        }
        .padding()
        .enableInjection()
    }
}

// #Preview {
//    ContentView()
// }
