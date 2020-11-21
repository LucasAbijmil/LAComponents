//
//
//  Copyright (c) 2020 Lucas Abijmil.

import XCTest
@testable import LAComponents

final class CollectionTests: XCTestCase {

  override class func setUp() {
    super.setUp()
  }

  override class func tearDown() {
    super.tearDown()
  }

  // MARK: - Tests Collection
  func testSafeIndex() {
    let expectation = self.expectation(description: "safeIndexOK")

    let array = [1, 2, 3, 4, 5]
    XCTAssertEqual(array[safe: 0], Optional(1))
    XCTAssertEqual(array[safe: 1], Optional(2))
    XCTAssertEqual(array[safe: 2], Optional(3))
    XCTAssertEqual(array[safe: 3], Optional(4))
    XCTAssertEqual(array[safe: 4], Optional(5))
    XCTAssertNil(array[safe: 5])
    XCTAssertNil(array[safe: 55])


    expectation.fulfill()
    wait(for: [expectation], timeout: 5)
  }
}
