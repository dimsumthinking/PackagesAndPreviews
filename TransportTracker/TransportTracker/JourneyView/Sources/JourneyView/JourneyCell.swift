import SwiftUI
import JourneyType
import HelperViews

public struct JourneyCell {
  private let journey: Journey
  
  public init(journey: Journey) {
    self.journey = journey
  }
}

extension JourneyCell: View {
  public var body: some View {
    HStack {
      JourneyIconView(type: journey.transportationType)
      VStack(alignment: .leading) {
        HStack {
          JourneyTitleView(type: journey.transportationType)
          Spacer()
          JourneyDurationView(duration: journey.duration)
        }
        JourneyDateView(date: journey.date)
          .font(.caption)
      }
    }
  }
}

struct JourneyCell_Previews: PreviewProvider {
  static var previews: some View {
    List {
      JourneyCell(journey: Journey.example)
    }
  }
}
