import SwiftUI
import BasicType

public struct JourneyIconView {
  private let type: TransportationType
  
  public init(type: TransportationType) {
    self.type = type
  }
}

extension JourneyIconView: View {
  public var body: some View {
    Image(systemName: type.iconName)
      .foregroundColor(.accentColor)
      .font(.largeTitle)
      .padding()
  }
}

struct JourneyIconView_Previews: PreviewProvider {
  static var previews: some View {
    JourneyIconView(type: .walkOrRun)
  }
}
