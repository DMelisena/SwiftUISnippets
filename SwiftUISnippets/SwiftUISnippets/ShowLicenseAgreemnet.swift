

struct ShowLicenseAgreement: View {
    @State private var isShowingSheet = false
    @ObservedObject private var io = Inject.observer
    var body: some View {
        Button(action: {
            isShowingSheet.toggle()
        }) {
            Text("Show License Agreement")
        }
        .sheet(isPresented: $isShowingSheet,
               onDismiss: didDismiss)
        {
            VStack {
                Text("License Agreement")
                    .font(.title)
                    .padding(50)
                Text("""
                    Terms and conditions go here.
                """)
                .padding(50)
                Button("Dismiss",
                       action: { isShowingSheet.toggle() })
            }
        }
    }

    func didDismiss() {
        // Handle the dismissing action.
    }
}
#Preview {
    ContentView()
}
