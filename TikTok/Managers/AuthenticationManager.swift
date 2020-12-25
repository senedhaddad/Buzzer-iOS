//
//  AuthenticationManager.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/24/20.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    public static let shared = AuthManager()

    private init() {}

    enum SignInMethod {
        case email
        case facebook
        case google
    }

    // Public

    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }

    public func signIn(with email: String, password: String, completion: @escaping (Bool) -> Void) {

    }

    public func signOut(completion: (Bool) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(true)
        }
        catch {
            print(error)
            completion(false)
        }
    }
}
