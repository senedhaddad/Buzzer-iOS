//
//  ExploreCell.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/25/20.
//

import Foundation
import UIKit

enum ExploreCell {
    case banner(viewModel: ExploreBannerViewModel)
    case post(viewModel: ExplorePostViewModel)
    case hashtag(viewModel: ExploreHashtagViewModel)
    case user(viewModel: ExploreUserViewModel)
}
