public let types = TransportationType.allCases

public enum TransportationType: Int, Codable, CaseIterable {
  case walkOrRun
  case bike
  case scooter
  case car
  case sharedRide
}

extension TransportationType: Identifiable {
  public var id: Int {
    rawValue
  }
}

extension TransportationType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .walkOrRun: return "Walk/Run"
    case .bike: return "Bike"
    case .scooter: return "Scooter"
    case .car: return "Car"
    case .sharedRide: return "Shared Ride"
    }
  }
}

extension TransportationType {
  public var iconName: String {
    switch self {
    case .walkOrRun: return "figure.walk"
    case .bike: return "bicycle"
    case .scooter: return "scooter"
    case .car: return "car"
    case .sharedRide: return "bus"
    }
  }
}
