//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class DateTest: XCTestCase {
  override class func setUp() {
    super.setUp()
  }

  override class func tearDown() {
    super.tearDown()
  }

  func testToString() {
    let exepctation = self.expectation(description: "toStringOk")

    let date = Date(timeIntervalSince1970: 1602280800)
    let expectedResult = "10/10/2020"

    XCTAssertEqual(date.string(format: "MM/dd/yyyy"), expectedResult)

    exepctation.fulfill()
    wait(for: [exepctation], timeout: 5)
  }
}
