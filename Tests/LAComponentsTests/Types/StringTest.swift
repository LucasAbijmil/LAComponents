//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class StringTest: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testToDate() {
    let expectation = self.expectation(description: "toDateOk")

    let string = "10/10/2020"
    let expectedResult = Date(timeIntervalSince1970: 1602280800)

    XCTAssertEqual(string.toDate(format: "MM/dd/yyyy"), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
