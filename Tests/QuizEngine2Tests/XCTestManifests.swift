import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(QuizEngine2Tests.allTests),
    ]
}
#endif
