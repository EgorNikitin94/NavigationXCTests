//
//  NavigationTestsXCTests.swift
//  NavigationTestsXCTests
//
//  Created by Егор Никитин on 29.07.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import XCTest
@testable import Navigation

class NavigationTestsXCTests: XCTestCase {

    var feedCoordinator: FeedCoordinator!

    var postIndex = 2

    override func setUp() {
        super.setUp()
        feedCoordinator = FeedCoordinator(navigationController: UINavigationController())
    }

    override func tearDown() {
        feedCoordinator = nil
        super.tearDown()
    }

    func test_coordinator_start() {
        feedCoordinator.start()
        XCTAssertTrue(feedCoordinator.isCalledCoordinatorStart, "Not called showPost")
    }

    func test_coordinator_show_post() {
        feedCoordinator.showPost(number: postIndex)
        feedCoordinator.showPostInfo()
        XCTAssertEqual(feedCoordinator.selectedPostIndex, postIndex)
        XCTAssertTrue(feedCoordinator.isCalledShowPostInfo, "Not called showNextViewController")
    }

}
