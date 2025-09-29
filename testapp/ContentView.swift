import SwiftUI

struct ContentView: View {
    @State private var message: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .font(.title)
                .foregroundColor(.blue)

            Button(action: {
                if message.isEmpty {
                    message = "Josef ist ein Stinky 💨"
                } else {
                    message = ""
                }
            }) {
                Text(message.isEmpty ? "Drück mich" : "Weg damit")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
