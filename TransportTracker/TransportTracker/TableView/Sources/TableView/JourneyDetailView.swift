import SwiftUI
import JourneyType
import HelperViews

struct JourneyDetailView {
  let journey: Journey
}

extension JourneyDetailView: View {
  var body: some View {
    VStack(spacing: 60) {
      JourneyDurationView(duration: journey.duration)
      JourneyIconView(type: journey.transportationType)
      JourneyDateView(date: journey.date)
      Text("to")
      JourneyDateView(date: journey.endDate)
      Spacer()
    }
    .navigationTitle(journey.transportationType.description)
  }
}

struct JourneyDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      JourneyDetailView(journey: Journey(using: .sharedRide))
    }
  }
}
