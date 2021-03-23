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
    let string = "\n     Hello world     \n"
    let expectedResult = "Hello world"
    let expectation = self.expectation(description: "trimmedOk")

    XCTAssertEqual(string.trimmed, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testFirstLetterCapitalized() {
    let string = "hello world !"
    let expectedResult = "Hello world !"
    let expectation = self.expectation(description: "firstLetterCapitalizedOK")

    XCTAssertEqual(string.firstLetterCapitalized, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testToDate() {
    let string = "10/10/2020"
    let expectedResult = Date(timeIntervalSince1970: 1602280800)
    let expectation = self.expectation(description: "toDateOk")

    XCTAssertEqual(string.date(format: "MM/dd/yyyy"), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testCapitalizingFirstLetter() {
    let string = "hello world !"
    let expectedResult = "Hello world !"
    let expectation = self.expectation(description: "capitalizingFirstLetterOk")

    XCTAssertEqual(string.capitalizingFirstLetter(), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
