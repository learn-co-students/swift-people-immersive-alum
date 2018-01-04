//
//  swift_peopleTests.swift
//  swift-peopleTests
//
//  Created by Mark Murray on 11/17/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import XCTest
@testable import swift_people

class swift_peopleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let jim = Person(name: "Jim",ageInYears: 41)
        XCTAssert(jim.celebrateBirthday().contains("41"))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
