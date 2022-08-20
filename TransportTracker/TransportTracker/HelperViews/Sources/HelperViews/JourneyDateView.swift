import SwiftUI

public struct JourneyDateView {
  private let date: Date
  
  public init(date: Date) {
    self.date = date
  }
}

extension JourneyDateView: View {
  public var body: some View {
    HStack {
      Text (date, style: .time)
      Text(date, style: .date)
    }
  }
}

struct JourneyDateView_Previews: PreviewProvider {
  static var previews: some View {
    JourneyDateView(date: Date())
  }
}
