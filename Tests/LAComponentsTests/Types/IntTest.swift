//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class IntTest: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testCastDouble() {
    let expectation = self.expectation(description: "castDoubleOk")

    let int = 5
    let exepectedResult = 5.0

    XCTAssertEqual(int.castDouble, exepectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testCastFloat() {
    let expectation = self.expectation(description: "castFloatOk")

    let int = 5
    let expectedResult: Float = 5.0

    XCTAssertEqual(int.castFloat, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testCastCGFloat() {
    let expectation = self.expectation(description: "castCGFloatOk")

    let int = 5
    let expectedResult: CGFloat = 5.0

    XCTAssertEqual(int.castCGFloat, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
