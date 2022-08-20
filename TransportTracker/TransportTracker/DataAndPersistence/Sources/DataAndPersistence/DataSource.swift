import Combine
import JourneyType
import BasicType

public class DataSource: ObservableObject {
  @Published private var history = JourneyHistory()
  public init(){}
}

extension DataSource {
  public var journies: [Journey] {
    history.journies
  }
  
  public func total(for type: TransportationType) -> Minutes {
    journies
      .filter{$0.transportationType == type}
      .map(\.duration)
      .reduce(0, +)
  }
}

extension DataSource {
  public func add(_ journey: Journey,
           at index: Int = 0) {
    history = history.inserted(journey,
                               at: index)
  }
  
  public func remove(at index: Int) {
    history = history.removed(at: index)
  }
  
  public func move(from index: Int,
            offset: Int) {
    history = history.moved(from: index,
                            to: index < offset
                            ? offset - 1
                            : offset)
  }
}
