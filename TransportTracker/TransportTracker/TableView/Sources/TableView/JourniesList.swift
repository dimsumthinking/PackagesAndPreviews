import SwiftUI
import DataAndPersistence
import JourneyView

public struct JourniesList {
  @State private var isAdding = false
  @EnvironmentObject private var dataSource: DataSource
  public init(){}
}

extension JourniesList: View {
  public var body: some View {
    List {
      ForEach(dataSource.journies) {journey in
        NavigationLink {
          JourneyDetailView(journey: journey)
        } label: {
          JourneyCell(journey: journey)
        }
      }
      .onDelete {indexSet in
        if let index = indexSet.first {
          dataSource.remove(at: index)
        }
      }
      .onMove {indexSet, offset in
        if let index = indexSet.first {
          dataSource.move(from: index,
                          offset: offset)
        }
      }
    }
    .navigationTitle("Journeys")
    .sheet(isPresented: $isAdding) {
      JourneyPickerView(isAdding: $isAdding)
    }
    #if os(iOS)
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        EditButton()
      }
      ToolbarItem(placement: .navigationBarTrailing) {
        Button(action: {isAdding = true}){
          Image(systemName: "plus")
        }
      }
    }
    #endif
  }
}

struct JourniesList_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      JourniesList()
        .environmentObject(DataSource())
    }
  }
}
