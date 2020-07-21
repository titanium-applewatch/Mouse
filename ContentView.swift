import SwiftUI

class ViewModel: ObservableObject {
    @Published var isDrow = false
}

struct ToolBarLeft: View {
    @ObservedObject var vm = ViewModel()
    var body: some View {
        HStack {
            Button(action: {
                self.vm.isDrow.toggle()
            }) {
                Image(systemName: self.vm.isDrow
                        ? "pencil"
                        : "pencil.slash")
                    .foregroundColor(.primary)
                    .font(.system(size: 28))
            }.padding(.horizontal, 10.0)
            .padding(.vertical, 5.0)
            .background(
                Color(.secondarySystemBackground)
                    .cornerRadius(7.0)
            )
        }
        .hoverEffect(.highlight)
    }
}
