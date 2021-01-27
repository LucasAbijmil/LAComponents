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

  func testTrimmed() {
    let expectation = self.expectation(description: "trimedOk")

    let string = "\n     Hello world     \n"
    let expectedResult = "Hello world"

    XCTAssertEqual(string.trimmed, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testToDate() {
    let expectation = self.expectation(description: "toDateOk")

    let string = "10/10/2020"
    let expectedResult = Date(timeIntervalSince1970: 1602280800)

    XCTAssertEqual(string.date(format: "MM/dd/yyyy"), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
