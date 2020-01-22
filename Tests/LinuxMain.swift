import XCTest

import CommonMarkTests

var tests = [XCTestCaseEntry]()
tests += CommonMarkTests.allTests()
tests += DocumentCreationTests.allTests()
tests += DocumentParsingTests.allTests()
tests += DocumentRenderingTests.allTests()
XCTMain(tests)
