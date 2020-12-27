//
//  TikTokTests.swift
//  TikTokTests
//
//  Created by Afraz Siddiqui on 12/27/20.
//

import XCTest

@testable import TikTok

class TikTokTests: XCTestCase {
    func testPostModelChildPath() {
        let id = UUID().uuidString
        let user = User(username: "billgates",
                        profilePictureURL: nil,
                        identifier: "123")
        var post = PostModel(identifier: id,
                             user: user)
        XCTAssertTrue(post.caption.isEmpty)
        post.caption = "Hello!"
        XCTAssertFalse(post.caption.isEmpty)
        XCTAssertEqual(post.caption, "Hello!")
        XCTAssertEqual(post.videoChildPath, "videos/billgates/")
    }
}
