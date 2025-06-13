import SwiftUI

struct ContentView: View {
    @ObservedObject private var io = Inject.observer
    @State var showingFirstSheet : Bool = false
    @State var StateColorRed: Bool = false
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing:0){
//                firstPart(colorRed: $StateColorRed)
                firstPart(colorRed: $StateColorRed)
                    .frame(width: geometry.size.width, height: geometry.size.height / 2)
                thirdPart()
                    .frame(width: geometry.size.width, height: geometry.size.height / 4)
                fourthPart()
                    .frame(width: geometry.size.width, height: geometry.size.height / 4)
            }
        }
        .enableInjection()
    }
}

#Preview {
    ContentView()
}
