//
//  ExploreResponse.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/27/20.
//

import Foundation

struct ExploreResponse: Codable {
    let banners: [Banner]
    let trendingPosts: [Post]
    let creators: [Creator]
    let recentPosts: [Post]
    let hashtags: [Hashtag]
    let popular: [Post]
    let recommended: [Post]
}
