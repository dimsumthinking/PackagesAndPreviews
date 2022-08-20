import JourneyType

struct JourneyHistory {
  let journies: [Journey]
  
  init() {
    journies = Persistence.retrieve()
  }
}

extension JourneyHistory {
  private init(journies: [Journey]) {
    self.journies = journies
    Persistence.save(journies)
  }
}

extension JourneyHistory {
  func removed(at index: Int) -> JourneyHistory {
    var journies = journies
    journies.remove(at: index)
    return JourneyHistory(journies: journies)
  }
  
  func inserted(_ journey: Journey,
              at index: Int = 0) -> JourneyHistory {
    var journies = journies
    journies.insert(journey, at: index)
    return JourneyHistory(journies: journies)
  }
  
  func moved(from fromIndex: Int,
             to toIndex: Int) -> JourneyHistory {
    return removed(at: fromIndex)
           .inserted(journies[fromIndex],
                     at: toIndex)
  }
}
