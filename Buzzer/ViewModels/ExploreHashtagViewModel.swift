//
//  ExploreHashtagViewModel.swift
//  Buzzer
//
//  Created by Sened Haddad on 12/25/20.
//

import Foundation
import UIKit

struct ExploreHashtagViewModel {
    let text: String
    let icon: UIImage?
    let count: Int // number of posts associated with tag
    let handler: (() -> Void)
}
