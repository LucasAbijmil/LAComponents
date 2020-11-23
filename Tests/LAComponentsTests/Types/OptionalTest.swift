//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class OptionalTest: XCTestCase {

  override class func setUp() {
    super.setUp()
  }

  override class func tearDown() {
    super.tearDown()
  }

  func testOptionalStringOrEmtpy() throws {
    let expectation = self.expectation(description: "optionalStringOrEmptyOK")
    let someValue: String? = "optionnal string or empty"
    let nilValue: String? = nil
    let someValueUnwrap = try XCTUnwrap(someValue)
    let emptyString = ""

    XCTAssertEqual(someValue.orEmpty, someValueUnwrap)
    XCTAssertEqual(nilValue.orEmpty, emptyString)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
