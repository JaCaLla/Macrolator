public struct SumModel {
    
    public let a: Int
    public let b: Int
    
    public init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    /// Devuelve la suma de ambos valores
    public func sum() -> Int {
        return a + b
    }
}
