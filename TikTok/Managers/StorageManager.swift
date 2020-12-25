//
//  StorageManager.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/24/20.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    public static let shared = StorageManager()

    private let database = Storage.storage().reference()

    private init() {}

    // Public

    public func getVideoURL(with identfier: String, completion: (URL) -> Void) {

    }

    public func uploadVideoURL(from url: URL) {

    }
}
