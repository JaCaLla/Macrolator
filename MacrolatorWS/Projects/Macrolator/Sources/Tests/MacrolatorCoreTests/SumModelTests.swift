import Testing
import MacrolatorCore

struct SumModelTests {

    @Test
    func sum_withPositiveValues_returnsCorrectResult() {
        let sut = SumModel(a: 3, b: 5)
        
        #expect(sut.sum() == 8)
    }
    
    @Test
    func sum_withNegativeValues_returnsCorrectResult() {
        let sut = SumModel(a: -4, b: -6)
        
        #expect(sut.sum() == -10)
    }
    
    @Test
    func sum_withMixedValues_returnsCorrectResult() {
        let sut = SumModel(a: -3, b: 7)
        
        #expect(sut.sum() == 4)
    }
    
    @Test
    func sum_withZeros_returnsZero() {
        let sut = SumModel(a: 0, b: 0)
        
        #expect(sut.sum() == 0)
    }
}
