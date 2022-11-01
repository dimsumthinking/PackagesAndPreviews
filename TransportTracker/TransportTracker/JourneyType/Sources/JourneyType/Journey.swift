import Foundation
import BasicType

public struct Journey: Codable {
  public let transportationType: TransportationType
  public let duration: Minutes
  public let date: Date
  
  public init(using transportationType: TransportationType) {
    self.transportationType = transportationType
    self.duration = Minutes.random(in: 10...120)
    self.date = Date()
  }
}

extension Journey {
  public var endDate: Date {
    date.advanced(by: TimeInterval(duration * 60))
  }
}

extension Journey: Hashable, Identifiable {
  public var id: Int {
    hashValue
  }
}

extension Journey {
  public static let example = Journey(using: .walkOrRun)
  
  public static let examples = [
    Journey(using: .walkOrRun),
    Journey(using: .bike),
    Journey(using: .sharedRide),
    Journey(using: .bike)
  ]
}
