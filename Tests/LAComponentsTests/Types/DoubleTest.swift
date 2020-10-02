//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class DoubleTest: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testCastInt() {
    let expectation = self.expectation(description: "castIntOk")

    let double = 3.14
    let expectedResult = 3

    XCTAssertEqual(double.castInt, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testCastFloat() {
    let expectation = self.expectation(description: "castFloatOk")

    let double = 3.14
    let expectedResult: Float = 3.14

    XCTAssertEqual(double.castFloat, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testCGFloat() {
    let expectation = self.expectation(description: "castCGFloatOk")

    let double = 3.14
    let expectedResult: CGFloat = 3.14

    XCTAssertEqual(double.castCGFloat, expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
