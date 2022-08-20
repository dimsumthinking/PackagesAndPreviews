import SwiftUI
import DataAndPersistence
import BasicType
import JourneyType

struct JourneyPickerView {
  @Binding var isAdding: Bool
  @State private var index = 0
  @EnvironmentObject private var dataSource: DataSource
}

extension JourneyPickerView: View {
  var body: some View {
    VStack{
      Spacer()
      Picker("Transportation Type",
             selection: $index) {
        ForEach(types) {type in
          Image(systemName: type.iconName)
        }
      }
             .pickerStyle(.segmented)
             .padding(.horizontal)
      Spacer()
      HStack(spacing: 100) {
        Button("Cancel",
               action: {isAdding = false})
        Button("Save") {
          dataSource.add(Journey(using: types[index]))
          isAdding = false
        }
      }
      Spacer()
    }
  }
}

struct JourneyPickerView_Previews: PreviewProvider {
  static var previews: some View {
    JourneyPickerView(isAdding: .constant(true))
      .environmentObject(DataSource())
  }
}
