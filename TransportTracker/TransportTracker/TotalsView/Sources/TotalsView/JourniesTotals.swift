import SwiftUI
import BasicType

public struct JourniesTotals {
  public init() {}
}

extension JourniesTotals: View {
  public var body: some View {
    List {
      ForEach(types) {type in
        JourneyTotalCell(type: type)
      }
    }
    .navigationTitle("Totals")
  }
}

struct JourniesTotals_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      JourniesTotals()
    }
  }
}
