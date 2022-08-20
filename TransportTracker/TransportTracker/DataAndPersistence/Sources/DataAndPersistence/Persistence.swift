import Foundation
import JourneyType

fileprivate let pathToFile
= FileManager
  .default
  .urls(for: .documentDirectory,
        in: .userDomainMask)
    .first?
    .appendingPathComponent("JourniesData")

struct Persistence {
  static func save(_ journies: [Journey]) {
    guard let pathToFile = pathToFile else {return}
    do {
      let json = try JSONEncoder().encode(journies)
      try json.write(to: pathToFile)
    } catch {
      print(error, "not properly handled")
    }
  }
  
  static func retrieve() -> [Journey] {
    var journies = [Journey(using: .bike)] // so that demo has something in it
    guard let pathToFile = pathToFile,
          FileManager.default
      .fileExists(atPath: pathToFile.path) else {
      return journies
    }
    do {
      let data = try Data(contentsOf: pathToFile)
      journies = try JSONDecoder()
                       .decode([Journey].self,
                               from: data)
    }
    catch {
      print(error, "not handled properly")
    }
    return journies
  }
}
