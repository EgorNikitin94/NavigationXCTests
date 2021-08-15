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
        XCTAssertEqual(feedCoordinator.navigationController.tabBarItem.title, "Feed")
    }

    func test_coordinator_show_post() {
        feedCoordinator.showPost(number: postIndex)
        XCTAssertEqual(feedCoordinator.selectedPostIndex, postIndex)
    }
    
    func test_show_post_info() {
        feedCoordinator.selectedPostIndex = postIndex
        feedCoordinator.showPostInfo()
        XCTAssertNotNil(feedCoordinator.selectedPostIndex, "selectedPostIndex = nil!")
        XCTAssertEqual(feedCoordinator.selectedPostIndex, postIndex)
    }

}
