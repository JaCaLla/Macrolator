public struct SumModel {

    public let intA: Int
    public let intB: Int

    public init(intA: Int, intB: Int) {
        self.intA = intA
        self.intB = intB
    }

    /// Devuelve la suma de ambos valores
    public func sum() -> Int {
        return intA + intB
    }
}
