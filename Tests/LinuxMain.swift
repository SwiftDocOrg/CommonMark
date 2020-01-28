import XCTest

import CommonMarkBuilderTests
import CommonMarkSpecTests
import CommonMarkTests

var tests = [XCTestCaseEntry]()
tests += CommonMarkBuilderTests.__allTests()
tests += CommonMarkSpecTests.__allTests()
tests += CommonMarkTests.__allTests()

XCTMain(tests)
