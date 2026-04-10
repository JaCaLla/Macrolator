import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = AppViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            
            Text("Macrolator")
                .font(.largeTitle)
                .bold()
            
            Text("Resultado: \(viewModel.result)")
                .font(.title2)
            
            Button("Sumar 3 + 5") {
                viewModel.calculate()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}