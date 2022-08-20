import SwiftUI
import BasicType

public struct JourneyDurationView {
  private let duration: Minutes
  
  public init(duration: Minutes) {
    self.duration = duration
  }
}

extension JourneyDurationView: View {
  public var body: some View {
    Text("\(duration) minutes")
  }
}

struct JourneyDurationView_Previews: PreviewProvider {
  static var previews: some View {
    JourneyDurationView(duration: 27)
  }
}
