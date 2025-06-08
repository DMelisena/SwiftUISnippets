import SwiftUI
import XcodebuildNvimPreview //: ignore

// @_exported import Inject

@main
struct SwiftUISnippets: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .setupNvimPreview { ContentView() }
        }
    }
}
