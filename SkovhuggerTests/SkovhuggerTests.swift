//
//  SkovhuggerTests.swift
//  SkovhuggerTests
//
//  Created by Oliver Stowell on 07/11/2018.
//  Copyright © 2018 Oliver Stowell. All rights reserved.
//

import XCTest
import Skovhugger

class SkovhuggerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let check = "Tome"
        Skovhugger.logDebug(message: "Hi there \(check) [debug]")
        Skovhugger.logDebug(subsystem: "test",
                            category: "Testing",
                            message: "Hi there \(check) [debug]")
        Skovhugger.logInfo(message: "Hi there \(check) [info]")
        Skovhugger.logInfo(subsystem: "test",
                           category: "Testing",
                           message: "Hi there \(check) [info]")
        Skovhugger.logFault(message: "Hi there \(check) [fault]")
        Skovhugger.logFault(subsystem: "test",
                            category: "Testing",
                            message: "Hi there \(check) [fault]")
        Skovhugger.logError(message: "Hi there \(check) [error]")
        Skovhugger.logError(subsystem: "test",
                            category: "Testing",
                            message: "Hi there \(check) [error]")
        Skovhugger.logDefault(message: "Hi there \(check) [default]")
        Skovhugger.logDefault(subsystem: "test",
                              category: "Testing",
                              message: "Hi there \(check) [default]")
    }
}
