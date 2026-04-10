import Testing
@testable import MacrolatorApp

struct MacrolatorAppTests {

    @Test
    func example_test_viewModel_calculatesCorrectly() {
        let vm = AppViewModel()
        
        vm.calculate()
        
        #expect(vm.result == 8)
    }
}