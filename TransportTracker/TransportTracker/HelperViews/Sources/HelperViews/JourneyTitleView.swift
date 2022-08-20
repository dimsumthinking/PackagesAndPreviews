import SwiftUI
import BasicType

public struct JourneyTitleView {
  private let type: TransportationType
  
  public init(type: TransportationType) {
    self.type = type
  }
}

extension JourneyTitleView: View {
  public var body: some View {
    Text(type.description)
  }
}

struct JourneyTitleView_Previews: PreviewProvider {
  static var previews: some View {
    JourneyTitleView(type: .scooter)
  }
}
