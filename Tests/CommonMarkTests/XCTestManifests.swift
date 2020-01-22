import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CommonMarkTests.allTests),
        testCase(DocumentCreationTests.allTests),
        testCase(DocumentParsingTests.allTests),
        testCase(DocumentRenderingTests.allTests),
    ]
}
#endif
