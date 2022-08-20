import SwiftUI
import TableView
import TotalsView

struct MainView {}

extension MainView: View {
  var body: some View {
    TabView {
      NavigationView {
        JourniesList()
      }
      .tabItem {
        Label("Journies",
              systemImage: "map")
      }
      NavigationView {
        JourniesTotals()
      }
      .tabItem {
        Label("Totals",
              systemImage: "list.bullet")
      }
    }
  }
}

import DataAndPersistence
struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(DataSource())
  }
}
