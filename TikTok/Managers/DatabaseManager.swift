//
//  DatabaseManager.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/24/20.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    public static let shared = DatabaseManager()

    private let database = Database.database().reference()

    private init() {}

    // Public

    public func getAllUsers(completion: ([String]) -> Void) {
        
    }
}
