//
//  SwitchCellViewModel.swift
//  Buzzer
//
//  Created by Sened Haddad on 12/27/20.
//

import Foundation

struct SwitchCellViewModel {
    let title: String
    var isOn: Bool

    mutating func setOn(_ on: Bool) {
        self.isOn = on
    }
}
