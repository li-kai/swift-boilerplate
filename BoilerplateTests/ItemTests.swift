//
//  ItemTests.swift
//  Boilerplate
//
//  Created by Li Kai on 3/3/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import XCTest
@testable import Boilerplate
import RealmSwift

class ItemTests: XCTestCase {

    override func setUp() {
        super.setUp()
        Realm.Configuration.defaultConfiguration.inMemoryIdentifier = self.name
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let comment = Comment()
        comment.id = 0
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
