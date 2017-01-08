//
//  testPerson.swift
//  bitriseTest
//
//  Created by Admin on 1/8/17.
//
//

import XCTest
import Foundation




class testPerson: XCTestCase {
    
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
        
        let mockString = "{\"username\" : \"ghasem\" ,\"age\" : 56}"
        
        let newMan = Person(JSONString: mockString)
        XCTAssertNil(newMan?.weight,"user wieght is bull shit")
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
