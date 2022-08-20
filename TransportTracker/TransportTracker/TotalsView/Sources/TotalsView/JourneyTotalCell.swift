import SwiftUI
import BasicType
import DataAndPersistence
import HelperViews
import JourneyType

public struct JourneyTotalCell {
  let type: TransportationType
  @State private var isAdding = false
  @EnvironmentObject private var dataSource: DataSource
  
  public init(type: TransportationType) {
    self.type = type
  }
}

extension JourneyTotalCell: View {
  public var body: some View {
    HStack {
      VStack(alignment: .leading) {
        JourneyTitleView(type: type)
          .font(.headline)
        JourneyDurationView(duration: dataSource.total(for: type))
      }
      Spacer()
      JourneyIconView(type: type)
    }
    .contentShape(Rectangle())
    .onTapGesture {isAdding = true}
    .alert("New journey using \(type.description)",
           isPresented: $isAdding) {
      Button("Cancel",
             action: {isAdding = false})
      Button("Save"){
        dataSource.add(Journey(using: type))
        isAdding = false
      }
    }
  }
}

struct JourneyTotalCell_Previews: PreviewProvider {
  static var previews: some View {
    JourneyTotalCell(type: .scooter)
      .environmentObject(DataSource())
  }
}
