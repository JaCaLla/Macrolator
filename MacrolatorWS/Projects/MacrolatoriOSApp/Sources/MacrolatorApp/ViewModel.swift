import Foundation

final class AppViewModel: ObservableObject {
    
    @Published var result: Int = 0
    
    func calculate() {
        let model = SumModel(a: 3, b: 5)
        result = model.sum()
    }
}