//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class ArrayTests: XCTestCase {

  override class func setUp() {
    super.setUp()
  }

  override class func tearDown() {
    super.tearDown()
  }

  func testRemoveDuplicate() {
    let expectation = self.expectation(description: "removeDuplicateOk")

    var array = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]
    let expectedResult = [1, 2, 3, 4, 5]

    XCTAssertEqual(array.removeDuplicate(), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testRemoveAllItem() {
    let expectation = self.expectation(description: "removeAllOk")

    var array = [1, 2, 3, 4, 5, 5, 5, 5, 5]
    let expectedResult = [1, 2, 3, 4]

    XCTAssertEqual(array.removeAll(5), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }

  func testRemoveAllItems() {
    let expectation = self.expectation(description: "removeAllOk")

    var array = [1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]
    let expectedResult = [1, 2, 3]

    XCTAssertEqual(array.removeAll([4, 5]), expectedResult)

    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
