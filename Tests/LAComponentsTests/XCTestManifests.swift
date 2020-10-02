//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LAComponentsTests.allTests),
    ]
}
#endif
