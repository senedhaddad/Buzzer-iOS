//
//  ExplorePostViewModel.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/25/20.
//

import Foundation
import UIKit

struct ExplorePostViewModel {
    let thumbnailImage: UIImage?
    let caption: String
    let handler: (() -> Void)
}
