import SwiftUI
import DataAndPersistence

@main
struct TransportTrackerApp: App {
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(DataSource())
    }
  }
}
