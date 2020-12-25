//
//  ExploreUserViewModel.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/25/20.
//

import Foundation
import UIKit

struct ExploreUserViewModel {
    let profilePictureURL: URL?
    let username: String
    let followerCuunt: Int
    let handler: (() -> Void)
}
