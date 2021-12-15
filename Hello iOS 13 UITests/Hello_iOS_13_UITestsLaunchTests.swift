//
//  Hello_iOS_13_UITestsLaunchTests.swift
//  Hello iOS 13 UITests
//
//  Created by Sunil Chauhan on 01/12/21.
//  Copyright © 2021 chauhan130. All rights reserved.
//

import XCTest

class Hello_iOS_13_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
